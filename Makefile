new:
	cd .. && \
		cp -r TemplateProject $(NAME) && \
		cd $(NAME) && \
		mv TemplateProject.cs $(NAME).cs && \
		mv TemplateProject.csproj $(NAME).csproj && \
		sed -ie 's/TemplateProject/$(NAME)/g' $(NAME).csproj && \
		sed -ie 's/templateproject/$(shell echo $(NAME) | tr A-Z a-z)/g' $(NAME).cs && \
		sed -ie 's/TemplateProject/$(NAME)/g' $(NAME).cs && \
		git init && git add . && git commit -m "initial commit"


	
