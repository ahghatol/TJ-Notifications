<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_notifications
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */


// No direct access to this file
defined('_JEXEC') or die;

/**
 * table class for notification
 *
 * @since  1.6
 */
class NotificationTableNotification extends JTable
{
	/**
	 * Constructor
	 *
	 * @param   JDatabase  &$db  A database connector object
	 */
	public function __construct(&$db)
	{
		$this->setColumnAlias('published', 'state');
		parent::__construct('#__notification_templates', 'id', $db);
	}
}
