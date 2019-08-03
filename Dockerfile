FROM sphinxdoc/sphinx

WORKDIR /docs
COPY requirements.txt /docs
RUN pip3 install -r requirements.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
