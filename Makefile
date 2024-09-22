new:
	cd .. && \
		cp -r EmptyProject $(NAME) && \
		cd $(NAME) && \
		mv EmptyProject.cs $(NAME).cs && \
		mv EmptyProject.csproj $(NAME).csproj && \
		sed -ie 's/EmptyProject/$(NAME)/g' $(NAME).csproj && \
		sed -ie 's/emptyproject/$(shell echo $(NAME) | tr A-Z a-z)/g' $(NAME).cs && \
		sed -ie 's/EmptyProject/$(NAME)/g' $(NAME).cs && \
		git init && git add . && git commit -m "initial commit"


	
