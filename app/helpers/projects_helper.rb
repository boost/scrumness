module ProjectsHelper
	def generate_project_graph(project)
		[
		 	{name: "PO", 	  data: project.sprints.map { |sprint| [sprint.id, sprint.role_rating]}},
		 	{name: "General", data: project.sprints.map { |sprint| [sprint.id, sprint.rating]} },
		 	{name: "Dev", 	  data: project.sprints.map { |sprint| [sprint.id, sprint.role_rating(false)]}}
		 ]
	end
end
