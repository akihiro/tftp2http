PROG=tftp2http
.PHONY: build clean

build: $(PROG)
$(PROG): tftp2http.go
	CGO_ENABLED=0 GOAMD64=v3 go build -trimpath -buildmode pie -ldflags "-w -s" .

clean:
	$(RM) $(PROG)
