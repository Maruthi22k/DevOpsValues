kubectl apply -f serviceaccount.yaml
kubectl apply -f clusterrole.yaml
kubectl apply -f clusterrolebinding.yaml
kubectl apply -f pod.yaml


--- Verify---

kubectl get sa -n dev-env
kubectl get clusterrole dev-reader
kubectl get clusterrolebinding dev-reader-binding
kubectl get pod -n dev-env
kubectl get sc


---- Test --
kubectl auth can-i --list \
  --as=system:serviceaccount:dev-env:dev-user


  -------- who login details---

  aws sts caller-identity    (we can check who logined)



  --------- Clean Up lab ----------

kubectl delete pod rbac-test -n rbac-demo
kubectl delete clusterrolebinding deployment-manager-binding
kubectl delete clusterrole deployment-manager
kubectl delete clusterrolebinding devops-viewer-binding
kubectl delete clusterrole devops-viewer
kubectl delete serviceaccount devops-viewer -n rbac-demo
kubectl delete namespace rbac-demo