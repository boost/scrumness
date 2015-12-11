module ProjectsHelper
	def generate_project_graph(project)
		[
			{name: "General", data: project.sprints.map { |sprint| [sprint.id, sprint.rating]} },
		 	{name: "PO", 			data: project.sprints.map { |sprint| [sprint.id, sprint.role_rating]}},
		 	{name: "Dev", 	  data: project.sprints.map { |sprint| [sprint.id, sprint.role_rating(false)]}}
		 ]
	end
end
