<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_notifications
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
/**
 * Methods supporting a list of notification records.
 *
 * @since  1.6
 */
class NotificationsTableProvider extends JTable
{
	/**
	 * Constructor.
	 *
	 * @param   array  $db  An optional associative array of configuration settings.
	 *
	 * @see        JController
	 * @since      1.6
	 */

	public function __construct($db)
	{
		parent::__construct('#__notification_providers', 'id', $db);
	}
}
