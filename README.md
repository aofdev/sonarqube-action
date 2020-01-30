# Sonarqube Action

## Usage

Run sonarqube scanner

```yaml
    - name: Scan code with sonarqube
      uses: minddocdev/sonarqube-action@master
      with:
        projectName: myApp
        sources: myFolder/myApp
        token: ${{ secrets.SONAR_TOKEN }}
        host: https://mySonarServer.com
        # Optional
        inclusions: folder/regex <myFolder/myApp/**>
        exclusions: folder/regex <myFolder/**>
```
