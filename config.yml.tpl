version: 0.1
log:
  fields:
      service: registry
storage:
  s3:
    accesskey: [your-s3-accesskey]
    secretkey: [your-s3-secretkey]
    region: cn-north-1 # change the region of your s3 bucket
    bucket: ssct-registry
    secure: true
    v4auth: true
    chunksize: 5242880
  cache:
    blobdescriptor: inmemory
  maintenance:
    uploadpurging:
      enabled: true
      age: 168h
      interval: 24h
      dryrun: false
http:
    addr: :5000
    headers:
        X-Content-Type-Options: [nosniff]
health:
  storagedriver:
    enabled: true
    interval: 10s
    threshold: 3

