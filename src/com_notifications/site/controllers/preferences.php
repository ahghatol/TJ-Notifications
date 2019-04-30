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
 * This controller to redirect to model of notification.
 *
 * @since  1.6
 */
class NotificationsControllerPreferences extends JControllerForm
{
	/**
	 * Method to save the model state.
	 *
	 * @return  void
	 *
	 * @since   1.6
	 */

		public function save($key = null, $urlVar = '')
		{
			$jinput = JFactory::getApplication()->input;
			$clientName = $jinput->get('client_name', '');
			$user = JFactory::getUser();
			$id = $user->id;
			$providerName = $jinput->get('provider_name', '');
			$key = $jinput->get('key', '');
			$data = array (
							'user_id'	=> $id,
							'client'  => $clientName,
							'provider' => $providerName,
							'key'	  => $key
						);
			$app   = JFactory::getApplication();
			$model = $this->getModel('Preferences', 'NotificationsModel');
			$result = $model->save($data);
			echo json_encode($result);
			jexit();
		}

	/**
	 * Method to delete the model state.
	 *
	 * @return  void
	 *
	 * @since   1.6
	 */
		public function delete()
		{
			$jinput = JFactory::getApplication()->input;
			$clientName = $jinput->get('client_name', '');
			$user = JFactory::getUser();
			$id = $user->id;
			$providerName = $jinput->get('provider_name', '');
			$key = $jinput->get('key', '');
			$data = array (
							'user_id'	=> $id,
							'client'  => $clientName,
							'provider' => $providerName,
							'key'	  => $key
						);
			$app   = JFactory::getApplication();
			$model = $this->getModel('Preferences', 'NotificationsModel');
			$result = $model->deletePreference($data);
			echo json_encode($result);
			jexit();
		}
}
