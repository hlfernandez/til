# Getting real-time output running external commands with `subprocess`

On Python 3.8.10, wanted to run an external command and see the output in real-time, so that I can monitor the process. After trying several alternatives, I finally found [this solution](https://stackoverflow.com/a/57970619/1821422):

```python
process = subprocess.Popen(
    'my_command',
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    shell=True,
    encoding='utf-8',
    errors='replace'
)

while True:
    realtime_output = process.stdout.readline()

    if realtime_output == '' and process.poll() is not None:
        break

    if realtime_output:
        print(realtime_output.strip(), flush=True)
```
