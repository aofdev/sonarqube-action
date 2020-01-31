# Sonarqube Action

## Usage

Run sonarqube scanner

```yaml
    - uses: actions/checkout@v2
    - name: scan code with sonarqube
      uses: aofdev/sonarqube-action@master
      with:
        projectName: myApp
        projectBaseDirectory: myFolder/myApp
        sources: myFolder/myApp
        token: ${{ secrets.SONAR_TOKEN }}
        host: https://mySonarServer.com
        # Optional
        exclusions: folder/regex <myFolder/**>
```
