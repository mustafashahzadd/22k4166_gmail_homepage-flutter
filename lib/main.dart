// 22k-4166 Muhammad Mustafa Shahzad
//22k-4218 Umar Farooq
// 22k-4184 Abu Bakar
import 'package:flutter/material.dart';

void main() {
  runApp(const GmailApp());
}

class GmailApp extends StatelessWidget {
  const GmailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              // Top Bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    Icon(Icons.menu, color: Colors.grey),
                    SizedBox(width: 16),
                    Image.network(
                      'https://www.google.com/gmail/about/static-2.0/images/logo-gmail.png',
                      height: 30,
                      errorBuilder: (context, error, stackTrace) => Text(
                        'Gmail',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    // Search Bar
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFEAF1FB),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey),
                            SizedBox(width: 12),
                            Text(
                              'Search mail',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.help_outline, color: Colors.grey),
                    SizedBox(width: 16),
                    Icon(Icons.settings_outlined, color: Colors.grey),
                    SizedBox(width: 16),
                    Icon(Icons.apps, color: Colors.grey),
                    SizedBox(width: 16),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.teal,
                      child: Text('K', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),

              Divider(height: 1, color: Colors.grey.shade200),

              // Main Content
              Expanded(
                child: Row(
                  children: [
                    // Left Sidebar
                    Container(
                      width: 200,
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Compose Button
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFD3E3FD),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.edit, color: Colors.black87),
                                SizedBox(width: 12),
                                Text(
                                  'Compose',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          // Menu Items
                          sidebarItem(Icons.inbox, 'Inbox', '6,405', true),
                          sidebarItem(Icons.star_border, 'Starred', '', false),
                          sidebarItem(Icons.access_time, 'Snoozed', '', false),
                          sidebarItem(Icons.send_outlined, 'Sent', '', false),
                          sidebarItem(
                            Icons.drafts_outlined,
                            'Drafts',
                            '85',
                            false,
                          ),
                          sidebarItem(Icons.expand_more, 'More', '', false),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Labels',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.add, color: Colors.grey, size: 18),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Vertical Divider
                    VerticalDivider(width: 1, color: Colors.grey.shade200),

                    // Email List
                    Expanded(
                      child: Column(
                        children: [
                          // Toolbar
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                SizedBox(width: 16),
                                Icon(
                                  Icons.refresh,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                SizedBox(width: 16),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Spacer(),
                                Text(
                                  '1-50 of 8,778',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Icon(
                                  Icons.chevron_left,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),

                          Divider(height: 1, color: Colors.grey.shade200),

                          // Emails
                          Expanded(
                            child: ListView(
                              children: [
                                emailRow(
                                  'me',
                                  '(no subject)',
                                  '5417.jpg',
                                  '5:06 PM',
                                ),
                                emailRow(
                                  'Syed Taha Ali Visit.',
                                  'New assignment: "SMD 2026 Classwork #2 - Flutter basics..." - Notification settings SMD - Spring 2026 A New assignment SMD 2026 Classwork #2',
                                  '',
                                  '5:06 PM',
                                ),
                                emailRow(
                                  'Career .. Academic 3',
                                  'Introductory Session: DevDay\'26 - Introductory Session Navigating The Path in Tech From Trend to Talent Dear all, We are thrilled to invite you',
                                  '',
                                  '3:39 PM',
                                ),
                                emailRow(
                                  'Career Services Off.',
                                  'Multiple Job Opportunities – Apply Now (Shispare) - Dear Students, Shispare has shared multiple job opportunities for talented and motivated candidates',
                                  '',
                                  '3:35 PM',
                                ),
                                emailRow(
                                  'Google',
                                  'Security alert - A new sign-in on Windows k224166@nu.edu.pk We noticed a new sign-in to your Google Account on a Windows device',
                                  '',
                                  '3:24 PM',
                                ),
                                emailRow(
                                  'Student Affairs Off.',
                                  'PR Desk Setup for Procom 2026 - Onsite Registration Open Now! - Dear Students, We are pleased to announce that the PR Desk for Procom 2026',
                                  '',
                                  '2:20 PM',
                                ),
                                emailRow(
                                  'Career Services Off.',
                                  'Opportunity: Front-End Developer (On-Site Position) - Dear Students, We are excited to share two excellent on-site career opportunities with Visionbase',
                                  '',
                                  '1:04 PM',
                                ),
                                emailRow(
                                  'Student Affairs Off.',
                                  'QAAYIM x The Neem Tree | Join GREENIK 2026 – Karachi\'s Largest Youth Climate Action Event - Dear Students, The Neem Tree is excited',
                                  'Grand Plantaio...',
                                  '1:02 PM',
                                ),
                                emailRow(
                                  'Academic Khi',
                                  'Teaching Assistant (T.A.) Application for Electrical Engineering Department - Spring 2026 - Dear Students of the Electrical Engineering Department',
                                  '',
                                  '11:55 AM',
                                ),
                                emailRow(
                                  'Mustafa Shahzad',
                                  'AIFTag Rearch Paper',
                                  'AIFTag Rearch ...',
                                  'Feb 1',
                                ),
                                emailRow(
                                  'me, Alina 7',
                                  'LOR Finalization – Convenient Time for Thursday - Ok thanks I just send the UT Dallas request for ms cs as well. On Sat, Jan 31, 2026',
                                  'Mustafa_Shahz...',
                                  'Jan 31',
                                ),
                                emailRow(
                                  'Mustafa Shahzad',
                                  '(no subject)',
                                  'PHOTO-2026-0...',
                                  'Jan 31',
                                ),
                                emailRow(
                                  'Mustafa Shahzad',
                                  '(no subject)',
                                  'PHOTO-2026-0...',
                                  'Jan 31',
                                ),
                                emailRow(
                                  'Mustafa Shahzad',
                                  '(no subject)',
                                  'PHOTO-2026-0...',
                                  'Jan 31',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Sidebar Menu Item
  Widget sidebarItem(IconData icon, String label, String count, bool selected) {
    return Container(
      margin: EdgeInsets.only(bottom: 4),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Color(0xFFD3E3FD) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: selected ? Colors.black : Colors.grey, size: 20),
          SizedBox(width: 16),
          Text(
            label,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
              fontSize: 14,
            ),
          ),
          Spacer(),
          if (count.isNotEmpty)
            Text(count, style: TextStyle(color: Colors.black54, fontSize: 12)),
        ],
      ),
    );
  }

  // Email Row
  Widget emailRow(
    String sender,
    String subject,
    String attachment,
    String time,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_box_outline_blank,
            color: Colors.grey.shade400,
            size: 18,
          ),
          SizedBox(width: 8),
          Icon(Icons.star_border, color: Colors.grey.shade400, size: 18),
          SizedBox(width: 12),

          // Sender
          Container(
            width: 150,
            child: Text(
              sender,
              style: TextStyle(color: Colors.black87, fontSize: 13),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Subject & Preview
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    subject,
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (attachment.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.image, color: Colors.red, size: 14),
                        SizedBox(width: 4),
                        Text(
                          attachment,
                          style: TextStyle(color: Colors.black54, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(width: 12),

          // Time
          Text(time, style: TextStyle(color: Colors.black54, fontSize: 12)),
        ],
      ),
    );
  }
}
