-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 04:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `gdn_accesstoken`
--

CREATE TABLE `gdn_accesstoken` (
  `AccessTokenID` int(11) NOT NULL,
  `Token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL,
  `Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Scope` text COLLATE utf8mb4_unicode_ci,
  `DateInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `InsertUserID` int(11) DEFAULT NULL,
  `InsertIPAddress` varbinary(16) NOT NULL,
  `DateExpires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_activity`
--

CREATE TABLE `gdn_activity` (
  `ActivityID` int(11) NOT NULL,
  `ActivityTypeID` int(11) NOT NULL,
  `NotifyUserID` int(11) NOT NULL DEFAULT '0',
  `ActivityUserID` int(11) DEFAULT NULL,
  `RegardingUserID` int(11) DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HeadlineFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Story` text COLLATE utf8mb4_unicode_ci,
  `Format` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordType` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `DateUpdated` datetime NOT NULL,
  `Notified` tinyint(4) NOT NULL DEFAULT '0',
  `Emailed` tinyint(4) NOT NULL DEFAULT '0',
  `Data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_activity`
--

INSERT INTO `gdn_activity` (`ActivityID`, `ActivityTypeID`, `NotifyUserID`, `ActivityUserID`, `RegardingUserID`, `Photo`, `HeadlineFormat`, `Story`, `Format`, `Route`, `RecordType`, `RecordID`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `DateUpdated`, `Notified`, `Emailed`, `Data`) VALUES
(1, 17, -1, 6, NULL, NULL, '{ActivityUserID,You} joined.', 'Welcome Aboard!', NULL, NULL, NULL, NULL, NULL, '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0, 0, '{\"ActivityUserIDs\":[5,4,3,2]}'),
(2, 15, -1, 2, 1, NULL, '{RegardingUserID,you} &rarr; {ActivityUserID,you}', 'Ping! An activity post is a public way to talk at someone. When you update your status here, it posts it on your activity feed.', 'Html', NULL, NULL, NULL, 1, '2019-02-07 11:20:41', NULL, '2019-02-07 11:20:41', 0, 0, NULL),
(3, 17, -2, 2, 3, NULL, '{ActivityUserID,user} added an account for {RegardingUserID,user}.', NULL, NULL, NULL, NULL, NULL, 2, '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0, 0, '[]'),
(4, 17, -2, 2, 4, NULL, '{ActivityUserID,user} added an account for {RegardingUserID,user}.', NULL, NULL, NULL, NULL, NULL, 2, '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0, 0, '[]'),
(5, 17, -2, 2, 5, NULL, '{ActivityUserID,user} added an account for {RegardingUserID,user}.', NULL, NULL, NULL, NULL, NULL, 2, '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0, 0, '[]'),
(6, 17, -2, 2, 6, NULL, '{ActivityUserID,user} added an account for {RegardingUserID,user}.', NULL, NULL, NULL, NULL, NULL, 2, '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0, 0, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_activitycomment`
--

CREATE TABLE `gdn_activitycomment` (
  `ActivityCommentID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_activitytype`
--

CREATE TABLE `gdn_activitytype` (
  `ActivityTypeID` int(11) NOT NULL,
  `Name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AllowComments` tinyint(4) NOT NULL DEFAULT '0',
  `ShowIcon` tinyint(4) NOT NULL DEFAULT '0',
  `ProfileHeadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FullHeadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RouteCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notify` tinyint(4) NOT NULL DEFAULT '0',
  `Public` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_activitytype`
--

INSERT INTO `gdn_activitytype` (`ActivityTypeID`, `Name`, `AllowComments`, `ShowIcon`, `ProfileHeadline`, `FullHeadline`, `RouteCode`, `Notify`, `Public`) VALUES
(1, 'SignIn', 0, 0, '%1$s signed in.', '%1$s signed in.', NULL, 0, 1),
(2, 'Join', 1, 0, '%1$s joined.', '%1$s joined.', NULL, 0, 1),
(3, 'JoinInvite', 1, 0, '%1$s accepted %4$s invitation for membership.', '%1$s accepted %4$s invitation for membership.', NULL, 0, 1),
(4, 'JoinApproved', 1, 0, '%1$s approved %4$s membership application.', '%1$s approved %4$s membership application.', NULL, 0, 1),
(5, 'JoinCreated', 1, 0, '%1$s created an account for %3$s.', '%1$s created an account for %3$s.', NULL, 0, 1),
(6, 'AboutUpdate', 1, 0, '%1$s updated %6$s profile.', '%1$s updated %6$s profile.', NULL, 0, 1),
(7, 'WallComment', 1, 1, '%1$s wrote:', '%1$s wrote on %4$s %5$s.', NULL, 0, 1),
(8, 'PictureChange', 1, 0, '%1$s changed %6$s profile picture.', '%1$s changed %6$s profile picture.', NULL, 0, 1),
(9, 'RoleChange', 1, 0, '%1$s changed %4$s permissions.', '%1$s changed %4$s permissions.', NULL, 1, 1),
(10, 'ActivityComment', 0, 1, '%1$s', '%1$s commented on %4$s %8$s.', 'activity', 1, 1),
(11, 'Import', 0, 0, '%1$s imported data.', '%1$s imported data.', NULL, 1, 0),
(12, 'Banned', 0, 0, '%1$s banned %3$s.', '%1$s banned %3$s.', NULL, 0, 1),
(13, 'Unbanned', 0, 0, '%1$s un-banned %3$s.', '%1$s un-banned %3$s.', NULL, 0, 1),
(14, 'Applicant', 0, 0, '%1$s applied for membership.', '%1$s applied for membership.', NULL, 1, 0),
(15, 'WallPost', 1, 1, '%3$s wrote:', '%3$s wrote on %2$s %5$s.', NULL, 0, 1),
(16, 'Default', 0, 0, NULL, NULL, NULL, 0, 1),
(17, 'Registration', 0, 0, NULL, NULL, NULL, 0, 1),
(18, 'Status', 0, 0, NULL, NULL, NULL, 0, 1),
(19, 'Ban', 0, 0, NULL, NULL, NULL, 0, 1),
(20, 'ConversationMessage', 0, 0, '%1$s sent you a %8$s.', '%1$s sent you a %8$s.', 'message', 1, 0),
(21, 'AddedToConversation', 0, 0, '%1$s added %3$s to a %8$s.', '%1$s added %3$s to a %8$s.', 'conversation', 1, 0),
(22, 'NewDiscussion', 0, 0, '%1$s started a %8$s.', '%1$s started a %8$s.', 'discussion', 0, 0),
(23, 'NewComment', 0, 0, '%1$s commented on a discussion.', '%1$s commented on a discussion.', 'discussion', 0, 0),
(24, 'DiscussionComment', 0, 0, '%1$s commented on %4$s %8$s.', '%1$s commented on %4$s %8$s.', 'discussion', 1, 0),
(25, 'DiscussionMention', 0, 0, '%1$s mentioned %3$s in a %8$s.', '%1$s mentioned %3$s in a %8$s.', 'discussion', 1, 0),
(26, 'CommentMention', 0, 0, '%1$s mentioned %3$s in a %8$s.', '%1$s mentioned %3$s in a %8$s.', 'comment', 1, 0),
(27, 'BookmarkComment', 0, 0, '%1$s commented on your %8$s.', '%1$s commented on your %8$s.', 'bookmarked discussion', 1, 0),
(28, 'Discussion', 0, 0, NULL, NULL, NULL, 0, 1),
(29, 'Comment', 0, 0, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_analyticslocal`
--

CREATE TABLE `gdn_analyticslocal` (
  `TimeSlot` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Views` int(11) DEFAULT NULL,
  `EmbedViews` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_attachment`
--

CREATE TABLE `gdn_attachment` (
  `AttachmentID` int(11) NOT NULL,
  `Type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignUserID` int(11) NOT NULL,
  `Source` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SourceID` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SourceURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `DateInserted` datetime NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `InsertIPAddress` varbinary(16) NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_ban`
--

CREATE TABLE `gdn_ban` (
  `BanID` int(11) NOT NULL,
  `BanType` enum('IPAddress','Name','Email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `BanValue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CountUsers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `CountBlockedRegistrations` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_category`
--

CREATE TABLE `gdn_category` (
  `CategoryID` int(11) NOT NULL,
  `ParentCategoryID` int(11) DEFAULT NULL,
  `TreeLeft` int(11) DEFAULT NULL,
  `TreeRight` int(11) DEFAULT NULL,
  `Depth` int(11) NOT NULL DEFAULT '0',
  `CountCategories` int(11) NOT NULL DEFAULT '0',
  `CountDiscussions` int(11) NOT NULL DEFAULT '0',
  `CountAllDiscussions` int(11) NOT NULL DEFAULT '0',
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `CountAllComments` int(11) NOT NULL DEFAULT '0',
  `LastCategoryID` int(11) NOT NULL DEFAULT '0',
  `DateMarkedRead` datetime DEFAULT NULL,
  `AllowDiscussions` tinyint(4) NOT NULL DEFAULT '1',
  `Archived` tinyint(4) NOT NULL DEFAULT '0',
  `CanDelete` tinyint(4) NOT NULL DEFAULT '1',
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UrlCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `CssClass` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PermissionCategoryID` int(11) NOT NULL DEFAULT '-1',
  `PointsCategoryID` int(11) NOT NULL DEFAULT '0',
  `HideAllDiscussions` tinyint(4) NOT NULL DEFAULT '0',
  `DisplayAs` enum('Categories','Discussions','Flat','Heading','Default') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Discussions',
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `LastCommentID` int(11) DEFAULT NULL,
  `LastDiscussionID` int(11) DEFAULT NULL,
  `LastDateInserted` datetime DEFAULT NULL,
  `AllowedDiscussionTypes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DefaultDiscussionType` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowFileUploads` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_category`
--

INSERT INTO `gdn_category` (`CategoryID`, `ParentCategoryID`, `TreeLeft`, `TreeRight`, `Depth`, `CountCategories`, `CountDiscussions`, `CountAllDiscussions`, `CountComments`, `CountAllComments`, `LastCategoryID`, `DateMarkedRead`, `AllowDiscussions`, `Archived`, `CanDelete`, `Name`, `UrlCode`, `Description`, `Sort`, `CssClass`, `Photo`, `PermissionCategoryID`, `PointsCategoryID`, `HideAllDiscussions`, `DisplayAs`, `InsertUserID`, `UpdateUserID`, `DateInserted`, `DateUpdated`, `LastCommentID`, `LastDiscussionID`, `LastDateInserted`, `AllowedDiscussionTypes`, `DefaultDiscussionType`, `AllowFileUploads`) VALUES
(-1, NULL, 1, 4, 0, 1, 0, 0, 0, 0, 0, NULL, 1, 0, 1, 'Root', 'root', 'Root of category tree. Users should never see this.', 1, NULL, NULL, -1, 0, 0, 'Categories', 1, 1, '2019-02-07 11:20:41', '2019-02-07 11:20:41', NULL, NULL, NULL, NULL, NULL, 1),
(1, -1, 2, 3, 1, 0, 4, 4, 0, 0, 1, NULL, 1, 0, 1, 'General', 'general', 'General discussions', 2, NULL, NULL, -1, 0, 0, 'Discussions', 1, 1, '2019-02-07 11:20:41', '2019-02-07 11:20:41', NULL, 4, '2019-02-07 11:20:42', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_comment`
--

CREATE TABLE `gdn_comment` (
  `CommentID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DeleteUserID` int(11) DEFAULT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateInserted` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `Flag` tinyint(4) NOT NULL DEFAULT '0',
  `Score` float DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_comment`
--

INSERT INTO `gdn_comment` (`CommentID`, `DiscussionID`, `InsertUserID`, `UpdateUserID`, `DeleteUserID`, `Body`, `Format`, `DateInserted`, `DateDeleted`, `DateUpdated`, `InsertIPAddress`, `UpdateIPAddress`, `Flag`, `Score`, `Attributes`) VALUES
(1, 2, 5, NULL, NULL, 'Thanks for these @\"Karen A. Thomas\", I\'ll make sure everyone follows the rules!\n', 'Markdown', '2019-02-07 11:20:42', NULL, NULL, 0x7f000001, NULL, 0, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"comment-678cf390bc9d6d99\",\"StubContentTag\":\"sample-rules-thanks\"}'),
(2, 3, 6, NULL, NULL, 'Wow, I didn\'t know about some of these, thanks!\n', 'Markdown', '2019-02-07 11:20:42', NULL, NULL, 0x7f000001, NULL, 0, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"comment-8a3393b2d8fe4c38\",\"StubContentTag\":\"tips-and-tricks-thanks\"}'),
(3, 4, 4, NULL, NULL, 'Great stuff @\"Victorine Courtois\", thank you for posting these helpful tips!', 'Markdown', '2019-02-07 11:20:42', NULL, NULL, 0x7f000001, NULL, 0, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"comment-69627fd8612f1db4\",\"StubContentTag\":\"great-discussion-thanks\"}');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_conversation`
--

CREATE TABLE `gdn_conversation` (
  `ConversationID` int(11) NOT NULL,
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForeignID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Contributors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstMessageID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime DEFAULT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateUserID` int(11) NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `CountMessages` int(11) NOT NULL DEFAULT '0',
  `CountParticipants` int(11) NOT NULL DEFAULT '0',
  `LastMessageID` int(11) DEFAULT NULL,
  `RegardingID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_conversationmessage`
--

CREATE TABLE `gdn_conversationmessage` (
  `MessageID` int(11) NOT NULL,
  `ConversationID` int(11) NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_discussion`
--

CREATE TABLE `gdn_discussion` (
  `DiscussionID` int(11) NOT NULL,
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForeignID` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryID` int(11) NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `FirstCommentID` int(11) DEFAULT NULL,
  `LastCommentID` int(11) DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tags` text COLLATE utf8mb4_unicode_ci,
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `CountBookmarks` int(11) DEFAULT NULL,
  `CountViews` int(11) NOT NULL DEFAULT '1',
  `Closed` tinyint(4) NOT NULL DEFAULT '0',
  `Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Sink` tinyint(4) NOT NULL DEFAULT '0',
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `DateLastComment` datetime DEFAULT NULL,
  `LastCommentUserID` int(11) DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `RegardingID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_discussion`
--

INSERT INTO `gdn_discussion` (`DiscussionID`, `Type`, `ForeignID`, `CategoryID`, `InsertUserID`, `UpdateUserID`, `FirstCommentID`, `LastCommentID`, `Name`, `Body`, `Format`, `Tags`, `CountComments`, `CountBookmarks`, `CountViews`, `Closed`, `Announce`, `Sink`, `DateInserted`, `DateUpdated`, `InsertIPAddress`, `UpdateIPAddress`, `DateLastComment`, `LastCommentUserID`, `Score`, `Attributes`, `RegardingID`) VALUES
(1, 'stub', 'discussion-1ca7c5ae8359e4ea', 1, 3, NULL, NULL, NULL, 'Welcome to awesome!', 'There\'s nothing sweeter than a fresh new forum, ready to welcome your community. A Vanilla Forum has all the bits and pieces you need to build an awesome discussion platform customized to your needs. \n\n**Here are a few tips for you as the administrator:**\n\n* Use the [Getting Started](/dashboard/settings/gettingstarted) checklist in the Dashboard to get your site ready for visitors.\n* Don\'t create too many categories. We recommend 3-8 to start with, keep it simple for your users!\n* **Announce** a discussion (click the gear) to stick to the top of the list, and **Close** it to stop further comments. This is useful for posting the rules, or welcoming new members.\n* Use **Sink** to take attention away from a discussion that might be getting out of hand. New comments will no longer bring it back to the top of the list.\n* **Bookmark** a discussion (click the star) to get notifications for new comments. You can edit notification settings from your [profile](/profile).\n\nWe\'ve created a few sample discussions to help get you started. They contain some useful \"Day 1\" information and also show you how things might look once your forum has a bit of real activity. Feel free to keep, edit, or delete them as you see fit!\n\n*Now spread the word to get this place cooking. Cheers!*\n', 'Markdown', NULL, 0, NULL, 1, 0, 1, 0, '2019-02-07 11:20:41', NULL, 0x7f000001, NULL, '2019-02-07 11:20:41', NULL, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"discussion-1ca7c5ae8359e4ea\",\"StubContentTag\":\"welcome-to-vanilla\"}', NULL),
(2, 'stub', 'discussion-9bb6ff1a410526d7', 1, 4, NULL, 1, 1, 'Please Read Before Posting', '*This is an example of a \'rules\' discussion, laying out expected behaviour for new users who join the community. Customize it to suit your specific needs, or write your own rules completely from scratch!*  \n\nThis community has been created so that you can exchange ideas, converse and meet others who share a common interest.  \n\n**Here are some guidelines:**  \n\n* Keep your posts relevant to the forum category.\n* Please be respectful of others and don’t sweat the small stuff.\n* Please do not post any personal information or photos that you wouldn’t want to be seen by the public.\n* Do not post hateful or illegal content. Do not post copyrighted material without proper attribution.\n* SPAM will not be tolerated.\n* Use private messages to chat with moderators or other members in private.\n\nIn summary: be polite, enjoy yourself, and help us build a great community.\n', 'Markdown', NULL, 1, NULL, 1, 0, 0, 0, '2019-02-07 11:20:41', NULL, 0x7f000001, NULL, '2019-02-07 11:20:42', 5, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"discussion-9bb6ff1a410526d7\",\"StubContentTag\":\"sample-rules\"}', NULL),
(3, 'stub', 'discussion-fdbc6842dace5238', 1, 4, NULL, 2, 2, 'Getting the most out of this forum', 'Here are some tips and tricks for using this forum:  \n\n* **Use the reactions**. These let you share how you feel about other’s comments. The most liked content shows up on the [Best Of](/bestof) page.\n* **Mention others.** Put an @ symbol before the username to mention someone. They’ll get notified when you do.\n* **Update your notification preferences.** You’ll receive a notification if someone mentions you or posts to a discussion that you’ve bookmarked. You can set notifications from the Edit Profile page.\n* **Send messages.** You can private message members by going to your inbox, or visiting their profile page (click their username anywhere).\n* **Don’t want to see everyone’s signature?** You can hide signatures by going to Edit Profile > Signature Settings.\n* **Check out the forum from your mobile phone.** Just go to the forum URL in your browser - no need to download an app.\n* **Want to embed a YouTube video, a Pinterest Pin or a Tweet?** Just paste in the link. Vanilla will handle the embedding for you!\n* Check out what’s going on with other community members on the [Activity](/activity) page.\n\nHave fun!\n', 'Markdown', NULL, 1, NULL, 1, 0, 0, 0, '2019-02-07 11:20:41', NULL, 0x7f000001, NULL, '2019-02-07 11:20:42', 6, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"discussion-fdbc6842dace5238\",\"StubContentTag\":\"tips-and-tricks\"}', NULL),
(4, 'stub', 'discussion-255efb523e6177ca', 1, 5, NULL, 3, 3, 'How to start a great discussion', 'Thank you for starting new discussions and asking questions. The more you contribute, the better this forum becomes.  \n\nHere are a few tips to help you create great discussions:  \n\n* **Make the discussion title or question as descriptive as possible.** A good discussion title is a short preview of your post and is what gets people to click and read. A well written title is also going to help search engines better index your post which will bring more people into the discussion. For example, instead of ‘Won’t Connect’, try ‘Help, I’m having problems getting my Acme modem into bridge mode.’\n* **Proof read.** Spelling mistakes, typos, and bad grammar will distract readers from the point you’re trying to make. Vanilla automatically saves drafts as you type. If you’re writing a long post, save it as a draft and come back to it after a few minutes or as long as it takes your brain to forget what you had written.\n* **Use minimal formatting.** Overly formatted posts can also distract from the message and it encourages others to do likewise and you end up with a hard to read thread.\n* **Put your post in the right category.** The right category can be the one that has a relevant category name or it can be a category where this kind of post is often made.\n* **Use tags.** Tags are helpful for others to find keyword related posts. It also helps the site admins get a sense for what topics are popular.\n* **If you want responses, ask for them.** In marketing this is called a ‘call to action’. If you want others to comment, you can encourage them by asking them to do so. If your post is just an FYI then don’t.\n* **Go easy on the insider jargon.** Inside jokes and inside references can be fun and make the community unique but too much of it can turn off new members.\n* **Add an image.** Images add visual interest and make your post look great when shared to social networks. You can embed an image using the button bar or you can upload one from your desktop or phone.\n* **Mention others.** Credit other members if you are building off their previous comments or if you want to draw them into the discussion. Put the @ before a username to mention someone.\n* **Take ownership.** Most important of all, take ownership of the discussions that you have created. Respond to comments promptly and thoughtfully. Thank others for commenting on your discussion and help with moderation if things get heated.\n\nThanks for posting! Have fun!', 'Markdown', NULL, 1, NULL, 1, 0, 0, 0, '2019-02-07 11:20:42', NULL, 0x7f000001, NULL, '2019-02-07 11:20:42', 4, NULL, '{\"StubLocale\":\"en\",\"StubContentID\":\"discussion-255efb523e6177ca\",\"StubContentTag\":\"starting-a-great-discussion\"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_draft`
--

CREATE TABLE `gdn_draft` (
  `DraftID` int(11) NOT NULL,
  `DiscussionID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Closed` tinyint(4) NOT NULL DEFAULT '0',
  `Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Sink` tinyint(4) NOT NULL DEFAULT '0',
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_flag`
--

CREATE TABLE `gdn_flag` (
  `DiscussionID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `InsertName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `AuthorName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignURL` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignID` int(11) NOT NULL,
  `ForeignType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateInserted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_invitation`
--

CREATE TABLE `gdn_invitation` (
  `InvitationID` int(11) NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleIDs` text COLLATE utf8mb4_unicode_ci,
  `Code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `AcceptedUserID` int(11) DEFAULT NULL,
  `DateAccepted` datetime DEFAULT NULL,
  `DateExpires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_log`
--

CREATE TABLE `gdn_log` (
  `LogID` int(11) NOT NULL,
  `Operation` enum('Delete','Edit','Spam','Moderate','Pending','Ban','Error') COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecordType` enum('Discussion','Comment','User','Registration','Activity','ActivityComment','Configuration','Group','Event') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionLogID` int(11) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `RecordUserID` int(11) DEFAULT NULL,
  `RecordDate` datetime NOT NULL,
  `RecordIPAddress` varbinary(16) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `OtherUserIDs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `ParentRecordID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Data` mediumtext COLLATE utf8mb4_unicode_ci,
  `CountGroup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_log`
--

INSERT INTO `gdn_log` (`LogID`, `Operation`, `RecordType`, `TransactionLogID`, `RecordID`, `RecordUserID`, `RecordDate`, `RecordIPAddress`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `OtherUserIDs`, `DateUpdated`, `ParentRecordID`, `CategoryID`, `Data`, `CountGroup`) VALUES
(1, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:17:51', NULL, 0, '2019-02-07 11:17:51', 0x7f000001, '', NULL, NULL, NULL, '{\"_New\":{\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledPlugins\":{\"recaptcha\":true},\"Garden\":{\"Title\":\"Vanilla\",\"Cookie\":{\"Salt\":\"UPqCOpDol5c6mZhg\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Vanilla\",\"Format\":\"text\"},\"SystemUserID\":\"1\",\"InputFormatter\":\"Markdown\"},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"]}}}', NULL),
(2, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:20:42', NULL, 2, '2019-02-07 11:20:42', 0x7f000001, '', NULL, NULL, NULL, '{\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(3, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:20:42', NULL, 2, '2019-02-07 11:20:42', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(4, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:26:41', NULL, 2, '2019-02-07 11:26:41', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(5, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:26:45', NULL, 2, '2019-02-07 11:26:45', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":false,\"editor\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(6, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:26:46', NULL, 2, '2019-02-07 11:26:46', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":false,\"editor\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":false,\"editor\":true,\"AllViewed\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(7, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:26:50', NULL, 2, '2019-02-07 11:26:50', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":false,\"editor\":true,\"AllViewed\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(8, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:26:52', NULL, 2, '2019-02-07 11:26:52', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(9, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:04', NULL, 2, '2019-02-07 11:27:04', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(10, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:06', NULL, 2, '2019-02-07 11:27:06', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(11, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:07', NULL, 2, '2019-02-07 11:27:07', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(12, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:12', NULL, 2, '2019-02-07 11:27:12', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(13, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:14', NULL, 2, '2019-02-07 11:27:14', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(14, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:16', NULL, 2, '2019-02-07 11:27:16', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(15, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:21', NULL, 2, '2019-02-07 11:27:21', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(16, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:23', NULL, 2, '2019-02-07 11:27:23', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(17, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:25', NULL, 2, '2019-02-07 11:27:25', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(18, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:27', NULL, 2, '2019-02-07 11:27:27', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"}}}', NULL),
(19, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:29', NULL, 2, '2019-02-07 11:27:29', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\"},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(20, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:31', NULL, 2, '2019-02-07 11:27:31', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL);
INSERT INTO `gdn_log` (`LogID`, `Operation`, `RecordType`, `TransactionLogID`, `RecordID`, `RecordUserID`, `RecordDate`, `RecordIPAddress`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `OtherUserIDs`, `DateUpdated`, `ParentRecordID`, `CategoryID`, `Data`, `CountGroup`) VALUES
(21, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:33', NULL, 2, '2019-02-07 11:27:33', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(22, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:35', NULL, 2, '2019-02-07 11:27:35', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(23, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:37', NULL, 2, '2019-02-07 11:27:37', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(24, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:27:38', NULL, 2, '2019-02-07 11:27:38', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(25, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:28:43', NULL, 2, '2019-02-07 11:28:43', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\"},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(26, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:31:12', NULL, 2, '2019-02-07 11:31:12', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\"},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(27, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:32:16', NULL, 2, '2019-02-07 11:32:16', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(28, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:56:14', NULL, 2, '2019-02-07 11:56:14', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":true,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(29, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:56:30', NULL, 2, '2019-02-07 11:56:30', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":true,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(30, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:56:32', NULL, 2, '2019-02-07 11:56:32', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":true,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(31, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:56:38', NULL, 2, '2019-02-07 11:56:38', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":true,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(32, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:57:23', NULL, 2, '2019-02-07 11:57:23', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":true,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(33, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:57:42', NULL, 2, '2019-02-07 11:57:42', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":true,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(34, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:58:03', NULL, 2, '2019-02-07 11:58:03', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":true,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":false,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL);
INSERT INTO `gdn_log` (`LogID`, `Operation`, `RecordType`, `TransactionLogID`, `RecordID`, `RecordUserID`, `RecordDate`, `RecordIPAddress`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `OtherUserIDs`, `DateUpdated`, `ParentRecordID`, `CategoryID`, `Data`, `CountGroup`) VALUES
(35, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:58:12', NULL, 2, '2019-02-07 11:58:12', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":false,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":true,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":false,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":false,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL),
(36, 'Edit', 'Configuration', NULL, NULL, NULL, '2019-02-07 11:58:20', NULL, 2, '2019-02-07 11:58:20', 0x7f000001, '', NULL, NULL, NULL, '{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":false,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":false,\"VanillaStats\":true,\"vanillicon\":true},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}},\"_New\":{\"Conversations\":{\"Version\":\"2.4.201\"},\"Database\":{\"Name\":\"forum\",\"Host\":\"localhost\",\"User\":\"forum\",\"Password\":\"forumdb25\"},\"EnabledApplications\":{\"Conversations\":\"/applications/conversations\",\"Vanilla\":\"/applications/vanilla\"},\"EnabledPlugins\":{\"recaptcha\":true,\"GettingStarted\":\"GettingStarted\",\"stubcontent\":true,\"swagger-ui\":true,\"Vanilla\":true,\"ButtonBar\":true,\"editor\":true,\"AllViewed\":true,\"IndexPhotos\":true,\"EmojiExtender\":true,\"Facebook\":false,\"Flagging\":false,\"VanillaInThisDiscussion\":true,\"Gravatar\":false,\"GooglePlus\":false,\"oauth2\":true,\"OpenID\":false,\"ProfileExtender\":false,\"Quotes\":true,\"SplitMerge\":false,\"StopForumSpam\":true,\"GooglePrettify\":true,\"Twitter\":false,\"VanillaStats\":true,\"vanillicon\":false},\"Garden\":{\"Title\":\"Forums\",\"Cookie\":{\"Salt\":\"i4OhB0kPADYDaFuH\",\"Domain\":\"\"},\"Registration\":{\"ConfirmEmail\":true},\"Email\":{\"SupportName\":\"Forums\",\"Format\":\"text\"},\"SystemUserID\":1,\"InputFormatter\":\"Markdown\",\"Version\":\"Undefined\",\"CanProcessImages\":true,\"Installed\":true,\"MobileInputFormatter\":\"TextEx\",\"AllowFileUploads\":true,\"Theme\":\"EmbedFriendly\",\"Embed\":{\"Allow\":true,\"RemoteUrl\":\"http://localhost/ProjectS2/user/forum\"}},\"Plugins\":{\"GettingStarted\":{\"Dashboard\":\"1\",\"Plugins\":\"1\"},\"editor\":{\"ForceWysiwyg\":false},\"StopForumSpam\":{\"UserID\":\"7\"},\"Vanillicon\":{\"Type\":\"v2\"}},\"Routes\":{\"YXBwbGUtdG91Y2gtaWNvbi5wbmc=\":[\"utility/showtouchicon\",\"Internal\"],\"DefaultController\":\"discussions\"},\"Vanilla\":{\"Version\":\"2.4.201\",\"AdminCheckboxes\":{\"Use\":true}}}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_media`
--

CREATE TABLE `gdn_media` (
  `MediaID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `ForeignID` int(11) DEFAULT NULL,
  `ForeignTable` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageWidth` smallint(5) UNSIGNED DEFAULT NULL,
  `ImageHeight` smallint(5) UNSIGNED DEFAULT NULL,
  `ThumbWidth` smallint(5) UNSIGNED DEFAULT NULL,
  `ThumbHeight` smallint(5) UNSIGNED DEFAULT NULL,
  `ThumbPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_message`
--

CREATE TABLE `gdn_message` (
  `MessageID` int(11) NOT NULL,
  `Content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowDismiss` tinyint(4) NOT NULL DEFAULT '1',
  `Enabled` tinyint(4) NOT NULL DEFAULT '1',
  `Application` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `IncludeSubcategories` tinyint(4) NOT NULL DEFAULT '0',
  `AssetTarget` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CssClass` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_permission`
--

CREATE TABLE `gdn_permission` (
  `PermissionID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  `JunctionTable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JunctionColumn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JunctionID` int(11) DEFAULT NULL,
  `Garden.Email.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Settings.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Settings.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.SignIn.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Approve` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Activity.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Activity.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Profiles.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Profiles.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Curation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Moderation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.PersonalInfo.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.AdvancedNotifications.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Community.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Tokens.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Tagging.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Conversations.Moderation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Conversations.Conversations.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Approval.Require` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Me` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.View` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Sink` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Close` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Plugins.Attachments.Upload.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Plugins.Flagging.Notify` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_permission`
--

INSERT INTO `gdn_permission` (`PermissionID`, `RoleID`, `JunctionTable`, `JunctionColumn`, `JunctionID`, `Garden.Email.View`, `Garden.Settings.Manage`, `Garden.Settings.View`, `Garden.SignIn.Allow`, `Garden.Users.Add`, `Garden.Users.Edit`, `Garden.Users.Delete`, `Garden.Users.Approve`, `Garden.Activity.Delete`, `Garden.Activity.View`, `Garden.Profiles.View`, `Garden.Profiles.Edit`, `Garden.Curation.Manage`, `Garden.Moderation.Manage`, `Garden.PersonalInfo.View`, `Garden.AdvancedNotifications.Allow`, `Garden.Community.Manage`, `Garden.Tokens.Add`, `Vanilla.Tagging.Add`, `Conversations.Moderation.Manage`, `Conversations.Conversations.Add`, `Vanilla.Approval.Require`, `Vanilla.Comments.Me`, `Vanilla.Discussions.View`, `Vanilla.Discussions.Add`, `Vanilla.Discussions.Edit`, `Vanilla.Discussions.Announce`, `Vanilla.Discussions.Sink`, `Vanilla.Discussions.Close`, `Vanilla.Discussions.Delete`, `Vanilla.Comments.Add`, `Vanilla.Comments.Edit`, `Vanilla.Comments.Delete`, `Plugins.Attachments.Upload.Allow`, `Plugins.Flagging.Notify`) VALUES
(1, 0, NULL, NULL, NULL, 3, 2, 2, 3, 2, 2, 2, 2, 2, 3, 3, 3, 2, 2, 2, 2, 2, 2, 3, 2, 3, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2),
(2, 0, 'Category', 'PermissionCategoryID', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 2, 2, 2, 2, 2, 3, 2, 2, 0, 0),
(3, 2, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 2, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 3, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 3, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 4, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 4, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 8, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(10, 8, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(11, 32, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(12, 32, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(13, 16, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 16, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_regarding`
--

CREATE TABLE `gdn_regarding` (
  `RegardingID` int(11) NOT NULL,
  `Type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `ForeignType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignID` int(11) NOT NULL,
  `OriginalContent` text COLLATE utf8mb4_unicode_ci,
  `ParentType` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ForeignURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reports` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_role`
--

CREATE TABLE `gdn_role` (
  `RoleID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` enum('guest','unconfirmed','applicant','member','moderator','administrator') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `Deletable` tinyint(4) NOT NULL DEFAULT '1',
  `CanSession` tinyint(4) NOT NULL DEFAULT '1',
  `PersonalInfo` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_role`
--

INSERT INTO `gdn_role` (`RoleID`, `Name`, `Description`, `Type`, `Sort`, `Deletable`, `CanSession`, `PersonalInfo`) VALUES
(2, 'Guest', 'Guests can only view content. Anyone browsing the site who is not signed in is considered to be a \"Guest\".', 'guest', 1, 0, 0, 0),
(3, 'Unconfirmed', 'Users must confirm their emails before becoming full members. They get assigned to this role.', 'unconfirmed', 2, 0, 1, 0),
(4, 'Applicant', 'Users who have applied for membership, but have not yet been accepted. They have the same permissions as guests.', 'applicant', 3, 0, 1, 0),
(8, 'Member', 'Members can participate in discussions.', 'member', 4, 1, 1, 0),
(16, 'Administrator', 'Administrators have permission to do anything.', 'administrator', 6, 1, 1, 0),
(32, 'Moderator', 'Moderators have permission to edit most content.', 'moderator', 5, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_session`
--

CREATE TABLE `gdn_session` (
  `SessionID` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '0',
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `DateExpires` datetime DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_spammer`
--

CREATE TABLE `gdn_spammer` (
  `UserID` int(11) NOT NULL,
  `CountSpam` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `CountDeletedSpam` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_tag`
--

CREATE TABLE `gdn_tag` (
  `TagID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ParentTagID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '-1',
  `CountDiscussions` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_tagdiscussion`
--

CREATE TABLE `gdn_tagdiscussion` (
  `TagID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_user`
--

CREATE TABLE `gdn_user` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varbinary(100) NOT NULL,
  `HashMethod` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `About` text COLLATE utf8mb4_unicode_ci,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShowEmail` tinyint(4) NOT NULL DEFAULT '0',
  `Gender` enum('u','m','f') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'u',
  `CountVisits` int(11) NOT NULL DEFAULT '0',
  `CountInvitations` int(11) NOT NULL DEFAULT '0',
  `CountNotifications` int(11) DEFAULT NULL,
  `InviteUserID` int(11) DEFAULT NULL,
  `DiscoveryText` text COLLATE utf8mb4_unicode_ci,
  `Preferences` text COLLATE utf8mb4_unicode_ci,
  `Permissions` text COLLATE utf8mb4_unicode_ci,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `DateSetInvitations` datetime DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `DateFirstVisit` datetime DEFAULT NULL,
  `DateLastActive` datetime DEFAULT NULL,
  `LastIPAddress` varbinary(16) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `HourOffset` int(11) NOT NULL DEFAULT '0',
  `Score` float DEFAULT NULL,
  `Admin` tinyint(4) NOT NULL DEFAULT '0',
  `Confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `Verified` tinyint(4) NOT NULL DEFAULT '0',
  `Banned` tinyint(4) NOT NULL DEFAULT '0',
  `Deleted` tinyint(4) NOT NULL DEFAULT '0',
  `Points` int(11) NOT NULL DEFAULT '0',
  `CountUnreadConversations` int(11) DEFAULT NULL,
  `CountDiscussions` int(11) DEFAULT NULL,
  `CountUnreadDiscussions` int(11) DEFAULT NULL,
  `CountComments` int(11) DEFAULT NULL,
  `CountDrafts` int(11) DEFAULT NULL,
  `CountBookmarks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_user`
--

INSERT INTO `gdn_user` (`UserID`, `Name`, `Password`, `HashMethod`, `Photo`, `Title`, `Location`, `About`, `Email`, `ShowEmail`, `Gender`, `CountVisits`, `CountInvitations`, `CountNotifications`, `InviteUserID`, `DiscoveryText`, `Preferences`, `Permissions`, `Attributes`, `DateSetInvitations`, `DateOfBirth`, `DateFirstVisit`, `DateLastActive`, `LastIPAddress`, `DateInserted`, `InsertIPAddress`, `DateUpdated`, `UpdateIPAddress`, `HourOffset`, `Score`, `Admin`, `Confirmed`, `Verified`, `Banned`, `Deleted`, `Points`, `CountUnreadConversations`, `CountDiscussions`, `CountUnreadDiscussions`, `CountComments`, `CountDrafts`, `CountBookmarks`) VALUES
(1, 'System', 0x5931494748553241465950413358564e52555836, 'Random', 'http://localhost/vanilaforum/applications/dashboard/design/images/usericon.png', NULL, NULL, NULL, 'system@example.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-07 11:17:50', NULL, NULL, NULL, 0, NULL, 2, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'admin', 0x2432792431302472755831504d5745745a6d2e52586b5830734672762e762e2e57317150714c5a414a2f52464a627463527062424c4369486d784d36, 'Vanilla', NULL, NULL, NULL, NULL, 'pai@gmail.com', 0, 'u', 1, 0, NULL, NULL, NULL, '{\"DashboardNav.SectionLandingPages\":{\"Settings\":\"embed/forum\"},\"DashboardNav.DashboardLandingPage\":\"Settings\",\"PreviewThemeName\":\"\",\"PreviewThemeFolder\":\"\"}', '{\"0\":\"Garden.Email.View\",\"1\":\"Garden.Settings.Manage\",\"2\":\"Garden.Settings.View\",\"3\":\"Garden.SignIn.Allow\",\"4\":\"Garden.Users.Add\",\"5\":\"Garden.Users.Edit\",\"6\":\"Garden.Users.Delete\",\"7\":\"Garden.Users.Approve\",\"8\":\"Garden.Activity.Delete\",\"9\":\"Garden.Activity.View\",\"10\":\"Garden.Profiles.View\",\"11\":\"Garden.Profiles.Edit\",\"12\":\"Garden.Curation.Manage\",\"13\":\"Garden.Moderation.Manage\",\"14\":\"Garden.PersonalInfo.View\",\"15\":\"Garden.AdvancedNotifications.Allow\",\"16\":\"Garden.Community.Manage\",\"17\":\"Conversations.Conversations.Add\",\"18\":\"Vanilla.Discussions.View\",\"19\":\"Vanilla.Discussions.Add\",\"20\":\"Vanilla.Discussions.Edit\",\"21\":\"Vanilla.Discussions.Announce\",\"22\":\"Vanilla.Discussions.Sink\",\"23\":\"Vanilla.Discussions.Close\",\"24\":\"Vanilla.Discussions.Delete\",\"25\":\"Vanilla.Comments.Add\",\"26\":\"Vanilla.Comments.Edit\",\"27\":\"Vanilla.Comments.Delete\",\"28\":\"Plugins.Attachments.Upload.Allow\",\"Vanilla.Discussions.View\":[-1],\"Vanilla.Discussions.Add\":[-1],\"Vanilla.Discussions.Edit\":[-1],\"Vanilla.Discussions.Announce\":[-1],\"Vanilla.Discussions.Sink\":[-1],\"Vanilla.Discussions.Close\":[-1],\"Vanilla.Discussions.Delete\":[-1],\"Vanilla.Comments.Add\":[-1],\"Vanilla.Comments.Edit\":[-1],\"Vanilla.Comments.Delete\":[-1]}', '{\"TimeZone\":\"Asia/Bangkok\",\"LastLoginAttempt\":1549540541,\"LoginRate\":1}', NULL, '1975-09-16 00:00:00', '2019-02-07 11:20:40', '2019-02-07 11:55:41', 0x7f000001, '2019-02-07 11:20:40', 0x7f000001, '2019-02-07 11:20:40', NULL, 7, NULL, 1, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Vanilla Forums', 0x353138483556513858533343384f414c4f50514d44365859, 'Random', 'https://images.v-cdn.net/stubcontent/vanilla_avatar.jpg', NULL, NULL, NULL, 'vanilla@stub.vanillacommunity.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, '', '{\"StubLocale\":\"en\",\"StubContentID\":\"user-a7aa242289be0507\",\"StubContentTag\":\"vanilla-user\"}', NULL, NULL, '2019-02-07 11:20:41', '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0x7f000001, NULL, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Karen A. Thomas', 0x52575650495230414d38454f42454f303045363638573033, 'Random', 'https://images.v-cdn.net/stubcontent/avatar_01.png', NULL, NULL, NULL, 'karen@stub.vanillacommunity.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, '', '{\"StubLocale\":\"en\",\"StubContentID\":\"user-24c9e15e52afc47c\",\"StubContentTag\":\"user1\"}', NULL, NULL, '2019-02-07 11:20:41', '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0x7f000001, NULL, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Victorine Courtois', 0x39374e464d33334d464a4836555245595059333343503345, 'Random', 'https://images.v-cdn.net/stubcontent/avatar_02.png', NULL, NULL, NULL, 'victorine@stub.vanillacommunity.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, '', '{\"StubLocale\":\"en\",\"StubContentID\":\"user-7e58d63b60197ceb\",\"StubContentTag\":\"user2\"}', NULL, NULL, '2019-02-07 11:20:41', '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0x7f000001, NULL, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Alex Powell', 0x51594b59565a4d42584c4930344c5658304532444d464f50, 'Random', 'https://images.v-cdn.net/stubcontent/avatar_03.png', NULL, NULL, NULL, 'alex@stub.vanillacommunity.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, '', '{\"StubLocale\":\"en\",\"StubContentID\":\"user-92877af70a45fd6a\",\"StubContentTag\":\"user3\"}', NULL, NULL, '2019-02-07 11:20:41', '2019-02-07 11:20:41', 0x7f000001, '2019-02-07 11:20:41', 0x7f000001, NULL, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'StopForumSpam', 0x4c5249514c3942303251334c3855374b564a354e, 'Random', NULL, NULL, NULL, NULL, 'stopforumspam@domain.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-07 11:27:30', NULL, NULL, NULL, 0, NULL, 2, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userauthentication`
--

CREATE TABLE `gdn_userauthentication` (
  `ForeignUserKey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProviderKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userauthenticationnonce`
--

CREATE TABLE `gdn_userauthenticationnonce` (
  `Nonce` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userauthenticationprovider`
--

CREATE TABLE `gdn_userauthenticationprovider` (
  `AuthenticationKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AuthenticationSchemeAlias` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssociationSecret` text COLLATE utf8mb4_unicode_ci,
  `AssociationHashMethod` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthenticateUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegisterUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignInUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignOutUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProfileUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `Active` tinyint(4) NOT NULL DEFAULT '1',
  `IsDefault` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_userauthenticationprovider`
--

INSERT INTO `gdn_userauthenticationprovider` (`AuthenticationKey`, `AuthenticationSchemeAlias`, `Name`, `URL`, `AssociationSecret`, `AssociationHashMethod`, `AuthenticateUrl`, `RegisterUrl`, `SignInUrl`, `SignOutUrl`, `PasswordUrl`, `ProfileUrl`, `Attributes`, `Active`, `IsDefault`) VALUES
('Facebook', 'facebook', NULL, '...', '...', '...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
('GooglePlus', 'GooglePlus', NULL, '', '', '...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
('oauth2', 'oauth2', 'oauth2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"AcceptedScope\":\"profile\",\"ProfileKeyEmail\":\"email\",\"ProfileKeyPhoto\":\"picture\",\"ProfileKeyName\":\"displayname\",\"ProfileKeyFullName\":\"name\",\"ProfileKeyUniqueID\":\"user_id\"}', 1, 0),
('Twitter', 'twitter', NULL, '...', '...', '...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userauthenticationtoken`
--

CREATE TABLE `gdn_userauthenticationtoken` (
  `Token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProviderKey` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignUserKey` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TokenSecret` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TokenType` enum('request','access') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Authorized` tinyint(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_usercategory`
--

CREATE TABLE `gdn_usercategory` (
  `UserID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateMarkedRead` datetime DEFAULT NULL,
  `Followed` tinyint(4) NOT NULL DEFAULT '0',
  `Unfollow` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_usercomment`
--

CREATE TABLE `gdn_usercomment` (
  `UserID` int(11) NOT NULL,
  `CommentID` int(11) NOT NULL,
  `Score` float DEFAULT NULL,
  `DateLastViewed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userconversation`
--

CREATE TABLE `gdn_userconversation` (
  `UserID` int(11) NOT NULL,
  `ConversationID` int(11) NOT NULL,
  `CountReadMessages` int(11) NOT NULL DEFAULT '0',
  `LastMessageID` int(11) DEFAULT NULL,
  `DateLastViewed` datetime DEFAULT NULL,
  `DateCleared` datetime DEFAULT NULL,
  `Bookmarked` tinyint(4) NOT NULL DEFAULT '0',
  `Deleted` tinyint(4) NOT NULL DEFAULT '0',
  `DateConversationUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userdiscussion`
--

CREATE TABLE `gdn_userdiscussion` (
  `UserID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `Score` float DEFAULT NULL,
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `DateLastViewed` datetime DEFAULT NULL,
  `Dismissed` tinyint(4) NOT NULL DEFAULT '0',
  `Bookmarked` tinyint(4) NOT NULL DEFAULT '0',
  `Participated` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_userdiscussion`
--

INSERT INTO `gdn_userdiscussion` (`UserID`, `DiscussionID`, `Score`, `CountComments`, `DateLastViewed`, `Dismissed`, `Bookmarked`, `Participated`) VALUES
(3, 1, NULL, 0, '2019-02-07 11:20:41', 0, 0, 1),
(4, 2, NULL, 0, '2019-02-07 11:20:41', 0, 0, 1),
(4, 3, NULL, 0, '2019-02-07 11:20:41', 0, 0, 1),
(5, 4, NULL, 0, '2019-02-07 11:20:42', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userip`
--

CREATE TABLE `gdn_userip` (
  `UserID` int(11) NOT NULL,
  `IPAddress` varbinary(16) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_userip`
--

INSERT INTO `gdn_userip` (`UserID`, `IPAddress`, `DateInserted`, `DateUpdated`) VALUES
(2, 0x7f000001, '2019-02-07 11:20:41', '2019-02-07 11:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_usermerge`
--

CREATE TABLE `gdn_usermerge` (
  `MergeID` int(11) NOT NULL,
  `OldUserID` int(11) NOT NULL,
  `NewUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_usermergeitem`
--

CREATE TABLE `gdn_usermergeitem` (
  `MergeID` int(11) NOT NULL,
  `Table` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Column` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecordID` int(11) NOT NULL,
  `OldUserID` int(11) NOT NULL,
  `NewUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_usermeta`
--

CREATE TABLE `gdn_usermeta` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_usermeta`
--

INSERT INTO `gdn_usermeta` (`UserID`, `Name`, `Value`) VALUES
(0, 'stubcontent.record.comment-678cf390bc9d6d99', '{\"contentID\":\"comment-678cf390bc9d6d99\",\"rowID\":\"1\",\"type\":\"comment\"}'),
(0, 'stubcontent.record.comment-69627fd8612f1db4', '{\"contentID\":\"comment-69627fd8612f1db4\",\"rowID\":\"3\",\"type\":\"comment\"}'),
(0, 'stubcontent.record.comment-8a3393b2d8fe4c38', '{\"contentID\":\"comment-8a3393b2d8fe4c38\",\"rowID\":\"2\",\"type\":\"comment\"}'),
(0, 'stubcontent.record.discussion-1ca7c5ae8359e4ea', '{\"contentID\":\"discussion-1ca7c5ae8359e4ea\",\"rowID\":\"1\",\"type\":\"discussion\"}'),
(0, 'stubcontent.record.discussion-255efb523e6177ca', '{\"contentID\":\"discussion-255efb523e6177ca\",\"rowID\":\"4\",\"type\":\"discussion\"}'),
(0, 'stubcontent.record.discussion-9bb6ff1a410526d7', '{\"contentID\":\"discussion-9bb6ff1a410526d7\",\"rowID\":\"2\",\"type\":\"discussion\"}'),
(0, 'stubcontent.record.discussion-fdbc6842dace5238', '{\"contentID\":\"discussion-fdbc6842dace5238\",\"rowID\":\"3\",\"type\":\"discussion\"}'),
(0, 'stubcontent.record.locale', 'en'),
(0, 'stubcontent.record.user-24c9e15e52afc47c', '{\"contentID\":\"user-24c9e15e52afc47c\",\"rowID\":\"4\",\"type\":\"user\"}'),
(0, 'stubcontent.record.user-7e58d63b60197ceb', '{\"contentID\":\"user-7e58d63b60197ceb\",\"rowID\":\"5\",\"type\":\"user\"}'),
(0, 'stubcontent.record.user-92877af70a45fd6a', '{\"contentID\":\"user-92877af70a45fd6a\",\"rowID\":\"6\",\"type\":\"user\"}'),
(0, 'stubcontent.record.user-a7aa242289be0507', '{\"contentID\":\"user-a7aa242289be0507\",\"rowID\":\"3\",\"type\":\"user\"}');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userpoints`
--

CREATE TABLE `gdn_userpoints` (
  `SlotType` enum('d','w','m','y','a') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TimeSlot` datetime NOT NULL,
  `Source` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Total',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `UserID` int(11) NOT NULL,
  `Points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdn_userrole`
--

CREATE TABLE `gdn_userrole` (
  `UserID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gdn_userrole`
--

INSERT INTO `gdn_userrole` (`UserID`, `RoleID`) VALUES
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(5, 32),
(6, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gdn_accesstoken`
--
ALTER TABLE `gdn_accesstoken`
  ADD PRIMARY KEY (`AccessTokenID`),
  ADD UNIQUE KEY `UX_AccessToken` (`Token`),
  ADD KEY `IX_AccessToken_UserID` (`UserID`),
  ADD KEY `IX_AccessToken_Type` (`Type`);

--
-- Indexes for table `gdn_activity`
--
ALTER TABLE `gdn_activity`
  ADD PRIMARY KEY (`ActivityID`),
  ADD KEY `IX_Activity_Notify` (`NotifyUserID`,`Notified`),
  ADD KEY `IX_Activity_Recent` (`NotifyUserID`,`DateUpdated`),
  ADD KEY `IX_Activity_Feed` (`NotifyUserID`,`ActivityUserID`,`DateUpdated`),
  ADD KEY `IX_Activity_DateUpdated` (`DateUpdated`),
  ADD KEY `FK_Activity_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `gdn_activitycomment`
--
ALTER TABLE `gdn_activitycomment`
  ADD PRIMARY KEY (`ActivityCommentID`),
  ADD KEY `FK_ActivityComment_ActivityID` (`ActivityID`);

--
-- Indexes for table `gdn_activitytype`
--
ALTER TABLE `gdn_activitytype`
  ADD PRIMARY KEY (`ActivityTypeID`);

--
-- Indexes for table `gdn_analyticslocal`
--
ALTER TABLE `gdn_analyticslocal`
  ADD UNIQUE KEY `UX_AnalyticsLocal` (`TimeSlot`);

--
-- Indexes for table `gdn_attachment`
--
ALTER TABLE `gdn_attachment`
  ADD PRIMARY KEY (`AttachmentID`),
  ADD KEY `IX_Attachment_ForeignID` (`ForeignID`),
  ADD KEY `FK_Attachment_ForeignUserID` (`ForeignUserID`),
  ADD KEY `FK_Attachment_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `gdn_ban`
--
ALTER TABLE `gdn_ban`
  ADD PRIMARY KEY (`BanID`),
  ADD UNIQUE KEY `UX_Ban` (`BanType`,`BanValue`);

--
-- Indexes for table `gdn_category`
--
ALTER TABLE `gdn_category`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `FK_Category_ParentCategoryID` (`ParentCategoryID`),
  ADD KEY `FK_Category_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `gdn_comment`
--
ALTER TABLE `gdn_comment`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `IX_Comment_1` (`DiscussionID`,`DateInserted`),
  ADD KEY `IX_Comment_DateInserted` (`DateInserted`),
  ADD KEY `FK_Comment_InsertUserID` (`InsertUserID`);
ALTER TABLE `gdn_comment` ADD FULLTEXT KEY `TX_Comment` (`Body`);

--
-- Indexes for table `gdn_conversation`
--
ALTER TABLE `gdn_conversation`
  ADD PRIMARY KEY (`ConversationID`),
  ADD KEY `IX_Conversation_Type` (`Type`),
  ADD KEY `IX_Conversation_RegardingID` (`RegardingID`),
  ADD KEY `FK_Conversation_FirstMessageID` (`FirstMessageID`),
  ADD KEY `FK_Conversation_InsertUserID` (`InsertUserID`),
  ADD KEY `FK_Conversation_DateInserted` (`DateInserted`),
  ADD KEY `FK_Conversation_UpdateUserID` (`UpdateUserID`);

--
-- Indexes for table `gdn_conversationmessage`
--
ALTER TABLE `gdn_conversationmessage`
  ADD PRIMARY KEY (`MessageID`),
  ADD KEY `FK_ConversationMessage_ConversationID` (`ConversationID`),
  ADD KEY `FK_ConversationMessage_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `gdn_discussion`
--
ALTER TABLE `gdn_discussion`
  ADD PRIMARY KEY (`DiscussionID`),
  ADD KEY `IX_Discussion_Type` (`Type`),
  ADD KEY `IX_Discussion_ForeignID` (`ForeignID`),
  ADD KEY `IX_Discussion_DateInserted` (`DateInserted`),
  ADD KEY `IX_Discussion_DateLastComment` (`DateLastComment`),
  ADD KEY `IX_Discussion_RegardingID` (`RegardingID`),
  ADD KEY `IX_Discussion_CategoryPages` (`CategoryID`,`DateLastComment`),
  ADD KEY `IX_Discussion_CategoryInserted` (`CategoryID`,`DateInserted`),
  ADD KEY `FK_Discussion_InsertUserID` (`InsertUserID`);
ALTER TABLE `gdn_discussion` ADD FULLTEXT KEY `TX_Discussion` (`Name`,`Body`);

--
-- Indexes for table `gdn_draft`
--
ALTER TABLE `gdn_draft`
  ADD PRIMARY KEY (`DraftID`),
  ADD KEY `FK_Draft_DiscussionID` (`DiscussionID`),
  ADD KEY `FK_Draft_CategoryID` (`CategoryID`),
  ADD KEY `FK_Draft_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `gdn_flag`
--
ALTER TABLE `gdn_flag`
  ADD KEY `FK_Flag_InsertUserID` (`InsertUserID`),
  ADD KEY `FK_Flag_ForeignURL` (`ForeignURL`);

--
-- Indexes for table `gdn_invitation`
--
ALTER TABLE `gdn_invitation`
  ADD PRIMARY KEY (`InvitationID`),
  ADD UNIQUE KEY `UX_Invitation` (`Code`),
  ADD UNIQUE KEY `UX_Invitation_code` (`Code`),
  ADD KEY `IX_Invitation_Email` (`Email`),
  ADD KEY `IX_Invitation_userdate` (`InsertUserID`,`DateInserted`);

--
-- Indexes for table `gdn_log`
--
ALTER TABLE `gdn_log`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `IX_Log_Operation` (`Operation`),
  ADD KEY `IX_Log_RecordType` (`RecordType`),
  ADD KEY `IX_Log_RecordID` (`RecordID`),
  ADD KEY `IX_Log_RecordUserID` (`RecordUserID`),
  ADD KEY `IX_Log_RecordIPAddress` (`RecordIPAddress`),
  ADD KEY `IX_Log_DateInserted` (`DateInserted`),
  ADD KEY `IX_Log_ParentRecordID` (`ParentRecordID`),
  ADD KEY `FK_Log_CategoryID` (`CategoryID`);

--
-- Indexes for table `gdn_media`
--
ALTER TABLE `gdn_media`
  ADD PRIMARY KEY (`MediaID`),
  ADD KEY `IX_Media_Foreign` (`ForeignID`,`ForeignTable`);

--
-- Indexes for table `gdn_message`
--
ALTER TABLE `gdn_message`
  ADD PRIMARY KEY (`MessageID`);

--
-- Indexes for table `gdn_permission`
--
ALTER TABLE `gdn_permission`
  ADD PRIMARY KEY (`PermissionID`),
  ADD KEY `FK_Permission_RoleID` (`RoleID`);

--
-- Indexes for table `gdn_regarding`
--
ALTER TABLE `gdn_regarding`
  ADD PRIMARY KEY (`RegardingID`),
  ADD KEY `FK_Regarding_Type` (`Type`);

--
-- Indexes for table `gdn_role`
--
ALTER TABLE `gdn_role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `gdn_session`
--
ALTER TABLE `gdn_session`
  ADD PRIMARY KEY (`SessionID`),
  ADD KEY `IX_Session_DateExpires` (`DateExpires`);

--
-- Indexes for table `gdn_spammer`
--
ALTER TABLE `gdn_spammer`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `gdn_tag`
--
ALTER TABLE `gdn_tag`
  ADD PRIMARY KEY (`TagID`),
  ADD UNIQUE KEY `UX_Tag` (`Name`,`CategoryID`),
  ADD KEY `IX_Tag_FullName` (`FullName`),
  ADD KEY `IX_Tag_Type` (`Type`),
  ADD KEY `FK_Tag_ParentTagID` (`ParentTagID`),
  ADD KEY `FK_Tag_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `gdn_tagdiscussion`
--
ALTER TABLE `gdn_tagdiscussion`
  ADD PRIMARY KEY (`TagID`,`DiscussionID`),
  ADD KEY `IX_TagDiscussion_CategoryID` (`CategoryID`);

--
-- Indexes for table `gdn_user`
--
ALTER TABLE `gdn_user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `FK_User_Name` (`Name`),
  ADD KEY `IX_User_Email` (`Email`),
  ADD KEY `IX_User_DateLastActive` (`DateLastActive`),
  ADD KEY `IX_User_DateInserted` (`DateInserted`);

--
-- Indexes for table `gdn_userauthentication`
--
ALTER TABLE `gdn_userauthentication`
  ADD PRIMARY KEY (`ForeignUserKey`,`ProviderKey`),
  ADD KEY `FK_UserAuthentication_UserID` (`UserID`);

--
-- Indexes for table `gdn_userauthenticationnonce`
--
ALTER TABLE `gdn_userauthenticationnonce`
  ADD PRIMARY KEY (`Nonce`),
  ADD KEY `IX_UserAuthenticationNonce_Timestamp` (`Timestamp`);

--
-- Indexes for table `gdn_userauthenticationprovider`
--
ALTER TABLE `gdn_userauthenticationprovider`
  ADD PRIMARY KEY (`AuthenticationKey`);

--
-- Indexes for table `gdn_userauthenticationtoken`
--
ALTER TABLE `gdn_userauthenticationtoken`
  ADD PRIMARY KEY (`Token`,`ProviderKey`),
  ADD KEY `IX_UserAuthenticationToken_Timestamp` (`Timestamp`);

--
-- Indexes for table `gdn_usercategory`
--
ALTER TABLE `gdn_usercategory`
  ADD PRIMARY KEY (`UserID`,`CategoryID`);

--
-- Indexes for table `gdn_usercomment`
--
ALTER TABLE `gdn_usercomment`
  ADD PRIMARY KEY (`UserID`,`CommentID`);

--
-- Indexes for table `gdn_userconversation`
--
ALTER TABLE `gdn_userconversation`
  ADD PRIMARY KEY (`UserID`,`ConversationID`),
  ADD KEY `IX_UserConversation_Inbox` (`UserID`,`Deleted`,`DateConversationUpdated`),
  ADD KEY `FK_UserConversation_ConversationID` (`ConversationID`);

--
-- Indexes for table `gdn_userdiscussion`
--
ALTER TABLE `gdn_userdiscussion`
  ADD PRIMARY KEY (`UserID`,`DiscussionID`),
  ADD KEY `FK_UserDiscussion_DiscussionID` (`DiscussionID`);

--
-- Indexes for table `gdn_userip`
--
ALTER TABLE `gdn_userip`
  ADD PRIMARY KEY (`UserID`,`IPAddress`);

--
-- Indexes for table `gdn_usermerge`
--
ALTER TABLE `gdn_usermerge`
  ADD PRIMARY KEY (`MergeID`),
  ADD KEY `FK_UserMerge_OldUserID` (`OldUserID`),
  ADD KEY `FK_UserMerge_NewUserID` (`NewUserID`);

--
-- Indexes for table `gdn_usermergeitem`
--
ALTER TABLE `gdn_usermergeitem`
  ADD KEY `FK_UserMergeItem_MergeID` (`MergeID`);

--
-- Indexes for table `gdn_usermeta`
--
ALTER TABLE `gdn_usermeta`
  ADD PRIMARY KEY (`UserID`,`Name`),
  ADD KEY `IX_UserMeta_Name` (`Name`);

--
-- Indexes for table `gdn_userpoints`
--
ALTER TABLE `gdn_userpoints`
  ADD PRIMARY KEY (`SlotType`,`TimeSlot`,`Source`,`CategoryID`,`UserID`);

--
-- Indexes for table `gdn_userrole`
--
ALTER TABLE `gdn_userrole`
  ADD PRIMARY KEY (`UserID`,`RoleID`),
  ADD KEY `IX_UserRole_RoleID` (`RoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gdn_accesstoken`
--
ALTER TABLE `gdn_accesstoken`
  MODIFY `AccessTokenID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_activity`
--
ALTER TABLE `gdn_activity`
  MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gdn_activitycomment`
--
ALTER TABLE `gdn_activitycomment`
  MODIFY `ActivityCommentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_activitytype`
--
ALTER TABLE `gdn_activitytype`
  MODIFY `ActivityTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gdn_attachment`
--
ALTER TABLE `gdn_attachment`
  MODIFY `AttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_ban`
--
ALTER TABLE `gdn_ban`
  MODIFY `BanID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_category`
--
ALTER TABLE `gdn_category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gdn_comment`
--
ALTER TABLE `gdn_comment`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gdn_conversation`
--
ALTER TABLE `gdn_conversation`
  MODIFY `ConversationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_conversationmessage`
--
ALTER TABLE `gdn_conversationmessage`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_discussion`
--
ALTER TABLE `gdn_discussion`
  MODIFY `DiscussionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gdn_draft`
--
ALTER TABLE `gdn_draft`
  MODIFY `DraftID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_invitation`
--
ALTER TABLE `gdn_invitation`
  MODIFY `InvitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_log`
--
ALTER TABLE `gdn_log`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gdn_media`
--
ALTER TABLE `gdn_media`
  MODIFY `MediaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_message`
--
ALTER TABLE `gdn_message`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_permission`
--
ALTER TABLE `gdn_permission`
  MODIFY `PermissionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gdn_regarding`
--
ALTER TABLE `gdn_regarding`
  MODIFY `RegardingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_role`
--
ALTER TABLE `gdn_role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gdn_tag`
--
ALTER TABLE `gdn_tag`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdn_user`
--
ALTER TABLE `gdn_user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gdn_usermerge`
--
ALTER TABLE `gdn_usermerge`
  MODIFY `MergeID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
