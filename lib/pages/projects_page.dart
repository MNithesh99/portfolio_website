import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FC),

      body: SafeArea(
        child: Column(
          children: [
            // Top Navigation
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 25,
              ),
              child: Row(
                children: [
                  const Text(
                    'MN.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4355B9),
                    ),
                  ),

                  const Spacer(),

                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/',
                      );
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  const SizedBox(width: 25),

                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/about',
                      );
                    },
                    child: const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  const SizedBox(width: 25),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4355B9),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Projects Content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 35,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'MY PROJECTS',
                        style: TextStyle(
                          letterSpacing: 3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4355B9),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'What I\'ve built',
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF20233A),
                        ),
                      ),

                      const SizedBox(height: 30),

                      _projectCard(
                        number: '01',
                        title: 'Content Moderation System',
                        description:
                        'A Python-based intelligent system for '
                            'analysing and filtering video content.',
                        technologies: 'Python',
                      ),

                      const SizedBox(height: 20),

                      _projectCard(
                        number: '02',
                        title: 'Weather Forecast App',
                        description:
                        'A weather application that provides '
                            'real-time weather information using an API.',
                        technologies: 'Flutter • Dart • API',
                      ),

                      const SizedBox(height: 20),

                      _projectCard(
                        number: '03',
                        title: 'Personal Portfolio',
                        description:
                        'A responsive personal portfolio website '
                            'designed to showcase my skills, interests, '
                            'and projects.',
                        technologies: 'Flutter • Dart',
                      ),

                      const SizedBox(height: 20),

                      _projectCard(
                        number: '04',
                        title: 'Student Management System',
                        description:
                        'A system designed to manage student records '
                            'and academic information efficiently.',
                        technologies: 'Java • Database',
                      ),

                      const SizedBox(height: 30),

                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              '/',
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            const Color(0xFF4355B9),
                            foregroundColor: Colors.white,
                            padding:
                            const EdgeInsets.symmetric(
                              horizontal: 28,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Back to Home',
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _projectCard({
    required String number,
    required String title,
    required String description,
    required String technologies,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFE1E3EC),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4355B9),
            ),
          ),

          const SizedBox(width: 25),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF20233A),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Color(0xFF666A7A),
                  ),
                ),

                const SizedBox(height: 15),

                Text(
                  technologies,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4355B9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}