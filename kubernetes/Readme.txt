create pod
kubectl create -f C:\Users\jojimene\Source\Repos\arribajim\cloud_dev\kubernetes\kubernet-ab.yaml
create rc
kubectl create -f C:\Users\jojimene\Source\Repos\arribajim\cloud_dev\kubernetes\kubernet-ab-rc.yaml
#create
service
kubectl create -f C:\Users\jojimene\source\repos\arribajim\cloud_dev\kubernetes\kubernet-svc-gw.yaml
loadbalancer
kubectl create -f C:\Users\jojimene\Source\Repos\arribajim\cloud_dev\kubernetes\kubernet-svc-loadbalancer.yaml
services
kubectl get svc,pods,rc -n guidewire-ns
#deolete
kubectl.1.16.exe delete pod gw-ab-local -n  guidewire-ns
 kubectl.1.16.exe delete rc gw-ab-rc -n  guidewire-ns
#bash
kubectl.1.16.exe exec gw-ab-docker -i -t -n guidewire-ns -- bash
#logs -f
λ kubectl.1.16.exe logs gw-ab-docker -c ab1003 -n guidewire-ns -f
kubectl.1.16.exe logs gw-ab-local -c ab1003 -n guidewire-ns -f
	#en un rc mirar el nombre asignado a los pods
λ kubectl.1.16.exe logs gw-ab-rc-hb49g -c ab1003 -n guidewire-ns -f

	reqest http via FQDN
kubectl.1.16.exe exec gw-ab-local -i -t -n guidewire-ns -- cat /etc/resolv.conf

kubectl.1.16.exe exec gw-ab-rc-8lqfn -i -t -n guidewire-ns -- cat /etc/resolv.conf
	

env including kuybernetes
 kubectl.1.16.exe exec gw-ab-rc-8lqfn -i -t -n guidewire-ns -- env

testing service
root@gw-ab-local:/usr/local/tomcat#curl http://guidewire-svc.guidewire-ns.svc.cluster.local/ab/ContactManager.do

svc
kubectl get endpoints guidewire-svc -n guidewire-ns

kubectl expose rc kubia --type=LoadBalancer --name kubia-http