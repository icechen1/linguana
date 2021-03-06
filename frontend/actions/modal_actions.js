var AppDispatcher = require('../dispatcher/dispatcher'),
    ModalConstants = require('../constants/modal_constants');

var ModalActions = {
  addModal: function (modalName) {
    setTimeout(function () {
      AppDispatcher.dispatch({
      actionType: ModalConstants.ADD_MODAL,
      modalName: modalName
    });}, 0);
  },

  toggleModalDisplay: function (modalName) {
    AppDispatcher.dispatch({
      actionType: ModalConstants.TOGGLE_MODAL_DISPLAY,
      modalName: modalName
    });
  },

  displayModal: function (modalName) {
    AppDispatcher.dispatch({
      actionType: ModalConstants.DISPLAY_MODAL,
      modalName: modalName
    });
  },

  removeModal: function (modalName) {
    setTimeout(function () {
      AppDispatcher.dispatch({
      actionType: ModalConstants.REMOVE_MODAL,
      modalName: modalName
    });}, 0);
  },

  hideModals: function () {
    AppDispatcher.dispatch({
      actionType: ModalConstants.HIDE_MODALS
    });
  },

  hideModal: function (modalName) {
    AppDispatcher.dispatch({
      actionType: ModalConstants.HIDE_MODAL,
      modalName: modalName
    });
  }
};

module.exports = ModalActions;
