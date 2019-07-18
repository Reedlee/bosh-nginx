# bosh-nginx
Build NGINX release by [bosh](https://bosh.io/docs/create-release/).

It is simple application with features describing in [there](https://github.com/anynines/tmp-homework-rl)

I use `https://github.com/cloudfoundry-community/nginx-release` as a base for current version of nginx 

# How to check
Before you need to create env alias to your infrastructure. Below the example to local(Virtual Box)

```bash
bosh alias-env vbox -e 192.168.50.6 --ca-cert <(bosh int ./creds.yml --path /director_ssl/ca)
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh int ./creds.yml --path /admin_password`
```
If you execute the script you will get env `vbox`. Than you need to get instances ip:
```bash
bosh -e vbox instances
```
So you can use curl or web-browser to get page