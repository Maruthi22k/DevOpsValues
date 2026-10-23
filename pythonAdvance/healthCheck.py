
def recommend_action(phase, reasons):
    text = " ".join(reasons).lower()

    if "crashloopbackoff" in text or "restarted" in text:
        return (
            "Inspect previous container logs, pod events, "
            "environment variables, and application startup."
        )

    if "imagepullbackoff" in text or "errimagepull" in text:
        return (
            "Check the image name, tag, registry credentials, "
            "and image pull secrets."
        )

    if "pending" in phase.lower():
        return (
            "Check scheduling events, node capacity, "
            "taints, tolerations, and resource requests."
        )

    if "not ready" in text:
        return (
            "Inspect readiness probes, application logs, "
            "and service dependencies."
        )

    return "Inspect pod events and container logs."


# Example:
print(recommend_action(
    "Running",
    ["app restarted 5 times"]
))
