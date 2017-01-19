cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: python
hints:
  - class: DockerRequirement
    dockerImageId: docker_symboltoentrez

inputs:
    - id: script
      type: File
      inputBinding:
        position: 1
      default:
            class: File
            location: symbol2entrez.py
    - id: symbol
      type: string
      inputBinding:
            position: 2
            prefix: --symbol
            separate: true
outputs:
    - id: result
      type: File
      outputBinding:
          glob: "*.txt"