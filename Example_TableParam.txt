Feature: testing scenarios with multiple examples section
        Scenario Outline: outline
          When a table step:
            | first   | second   |
            | <first> | <second> |

        Examples: First set of examples
		desc1 
		example1
          | first   | second  |
          | 1       | 2       |

        Examples: Second set of examples
		desc2
		example2
          | first   | second  |
          | 3       | 4       |
          | 5       | 6       |