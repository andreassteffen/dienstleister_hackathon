cwlVersion: v1.0
class: CommandLineTool
baseCommand: node
hints:
  DockerRequirement:
    dockerImageID: docker_symboltoentrez
inputs:
  src:
    type: string
    inputBinding:
      position: 1
outputs: []
