FROM quay.io/ansible/ansible-runner:stable-2.9-latest

COPY requirements.txt /
RUN python3 -m pip install -r /requirements.txt

ENTRYPOINT ["entrypoint"]
CMD ["ansible-runner", "run", "/runner"]
