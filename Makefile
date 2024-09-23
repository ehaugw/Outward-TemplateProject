new:
	cd .. && \
		mkdir $(NAME) && \
		cp TemplateProject/TemplateProject.cs $(NAME)/$(NAME).cs && \
		cp TemplateProject/TemplateProject.csproj $(NAME)/$(NAME).csproj && \
		cd $(NAME) && \
		sed -i 's/TemplateProject/$(NAME)/g' $(NAME).csproj && \
		sed -i 's/templateproject/$(shell echo $(NAME) | tr A-Z a-z)/g' $(NAME).cs && \
		sed -i 's/TemplateProject/$(NAME)/g' $(NAME).cs && \
		git init && git add . && git commit -m "initial commit" && \
		git remote add origin git@github.com:ehaugw/Outward-$(NAME).git && \
		git push --set-upstream origin master -f
