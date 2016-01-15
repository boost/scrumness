module ProjectsHelper
	def generate_project_graph(project)
		x = [
		 	{name: "PO", 			data: project.sprints.map { |sprint| [sprint.id, sprint.role_rating]}},
		 	{name: "General", data: project.sprints.map { |sprint| [sprint.id, sprint.rating, "foo"]} },
		 	{name: "Dev", 	  data: project.sprints.map { |sprint| [sprint.id, sprint.role_rating(false)]}}
		 ]
		 x
	end
end
