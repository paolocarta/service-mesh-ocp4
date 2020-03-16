#!/bin/bash

# oc new-project 3scale

# oc create secret docker-registry threescale-registry-auth \
#   --docker-server=registry.redhat.io \
#   --docker-username="12590587|paolos-svc-acc-3scale" \
#   --docker-password="eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiI3ODJmYmE1N2U2Mjg0ODlmYjM2NDkwMTQ4MWFiMmVjZiJ9.M7PT1ao-5nRbpsmGkTVistSebsW-HnoA6eKWcdKPrlW06VaXKxq5MPL3FDVYi8ls08qyhY6N-tXwjNvnlnkgIr65s_Rk8gt-dPOxFgDOMCgqXtujydDiAuAwedmDqUTFAxQRTa4nhmumAIOTgBlB--cUemt2u9YUZV_qeX7hZQJUJAWunpSFnZbwTLRJ0gcfLS1zUaAZ6aT7LYba7yzn70y2cwoBguR0fw8wrDhbNU7vqZlS-OI-DYnguewKFwnNBTcgTFRDQzb59HarFBPZX4RXgDJkAi0jXbtclAywP2q-md4j2HNv7HIwjvFcUlRgAO7kXm4FWmKbGnsD0FBfERbFjvvHruMTNmMiX9sfvWtyejGkJi2h1Yl71AolQrRm5wwPNkhmvQ0LnXSEh0Ap3HCwr5PHB4w9giM_H8EyDSiLq_4scPKSOauLrlaJHpdDSxvrxvRzyqwRoXeDIgDgCHWuTe5RXB6h3zqwUpuLeshGqRnDDTQHQBJN674cc78I9_tkL42t8DdEekZ_3ZVqmlN-DEKUS_RefIFq4BZGSpzgfn7h7YeXJrm_3Z-jy70LKjU2i-YH1jCKvLI5K7YDTufI6iboJR8OE_q3_AKOMEC3aoleYtXvGit3gsun_8pHwjQKYzPiEjU8USNZ2mS3eB6PJlF-D2sr9vAWER7fimE"

# oc new-app --file amp.yml --param WILDCARD_DOMAIN=apps.cluster-d976.d976.sandbox1717.opentlc.com

# ---

SERVICE=$1
URL=$2
TOKEN=$3

oc exec -n istio-system $(oc get po -n istio-system -o jsonpath='{.items[?(@.metadata.labels.app=="3scale-istio-adapter")].metadata.name}') \
-it -- ./3scale-config-gen --url ${URL} --service=${SERVICE} --token ${TOKEN} --name="istio-api" -n istio-system | oc apply -f


