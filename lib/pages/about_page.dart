import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                    onPressed: () {},
                    child: const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4355B9),
                      ),
                    ),
                  ),

                  const SizedBox(width: 25),

                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/projects',
                      );
                    },
                    child: const Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // About Content
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
                        'ABOUT ME',
                        style: TextStyle(
                          letterSpacing: 3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4355B9),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Get to know me',
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF20233A),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Introduction
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFE1E3EC),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE5E8FA),
                                borderRadius:
                                BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  'MN',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4355B9),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 25),

                            const Expanded(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Who I Am',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF20233A),
                                    ),
                                  ),

                                  SizedBox(height: 12),

                                  Text(
                                    'I’m a motivated and detail-oriented '
                                        'professional with strong '
                                        'problem-solving, analytical thinking, '
                                        'and adaptability. I approach challenges '
                                        'with a practical mindset and focus on '
                                        'finding efficient, effective solutions.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.7,
                                      color: Color(0xFF666A7A),
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Text(
                                    'I’m a quick learner who takes '
                                        'initiative, works well independently '
                                        'and in teams, and consistently focuses '
                                        'on improving my technical and '
                                        'professional skills.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.7,
                                      color: Color(0xFF666A7A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 25),

                      // Skills
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFE1E3EC),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Technical Skills',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF20233A),
                              ),
                            ),

                            const SizedBox(height: 8),

                            const Text(
                              'Technologies and tools I work with',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF777B8C),
                              ),
                            ),

                            const SizedBox(height: 22),

                            Wrap(
                              spacing: 12,
                              runSpacing: 12,
                              children: [
                                _skill('C'),
                                _skill('C++'),
                                _skill('Python'),
                                _skill('Java'),
                                _skill('HTML & CSS'),
                                _skill('JavaScript'),
                                _skill('SQL'),
                                _skill('Git & GitHub'),
                                _skill('React'),
                                _skill('AI & Machine Learning'),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 25),

                      // Areas of Interest
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFE1E3EC),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Areas of Interest',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF20233A),
                              ),
                            ),

                            const SizedBox(height: 8),

                            const Text(
                              'Fields I am interested in exploring '
                                  'and growing in',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF777B8C),
                              ),
                            ),

                            const SizedBox(height: 22),

                            Wrap(
                              spacing: 12,
                              runSpacing: 12,
                              children: [
                                _interest(
                                  'Artificial Intelligence & Machine Learning',
                                ),
                                _interest(
                                  'Software Development',
                                ),
                                _interest(
                                  'Web Development',
                                ),
                                _interest(
                                  'Data Science',
                                ),
                                _interest(
                                  'Natural Language Processing',
                                ),
                                _interest(
                                  'Problem Solving',
                                ),
                                _interest(
                                  'Emerging Technologies',
                                ),
                              ],
                            ),
                          ],
                        ),
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

  static Widget _skill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF4355B9),
        ),
      ),
    );
  }

  static Widget _interest(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF8F9FC),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xFFE1E3EC),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF55596F),
        ),
      ),
    );
  }
}
