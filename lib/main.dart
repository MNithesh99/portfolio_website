import 'package:flutter/material.dart';
import 'pages/about_page.dart';
import 'pages/projects_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

            // Main Content
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                  ),
                  child: Row(
                    children: [
                      // Left Side
                      Expanded(
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'HELLO, I\'M',
                              style: TextStyle(
                                letterSpacing: 3,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4355B9),
                              ),
                            ),

                            const SizedBox(height: 15),

                            const Text(
                              'M Nithesh',
                              style: TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF20233A),
                              ),
                            ),

                            const SizedBox(height: 10),

                            const Text(
                              'B.Tech CSE Student',
                              style: TextStyle(
                                fontSize: 23,
                                color: Color(0xFF55596F),
                              ),
                            ),

                            const SizedBox(height: 20),

                            const Text(
                              'Hi, I’m Nithesh, a Computer Science student '
                                  'passionate about technology, problem-solving, '
                                  'and building useful projects. I’m constantly '
                                  'learning new skills and exploring opportunities '
                                  'to grow as a developer.',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.6,
                                color: Color(0xFF666A7A),
                              ),
                            ),

                            const SizedBox(height: 25),

                            const Text(
                              'B.Tech CSE  •  Problem Solver  •  Tech Enthusiast',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4355B9),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 60),

                      // Right Side - Avatar
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 300,
                            height: 300,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE5E8FA),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                'MN',
                                style: TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4355B9),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
}