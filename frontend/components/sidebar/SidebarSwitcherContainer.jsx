import { connect } from 'react-redux';
import SidebarSwitcher from './SidebarSwitcher';
import { logout } from '../../actions/session-actions';

const mapStateToProps = (state, ownProps) => ({
  errors: state.errors.session,
  currentUser: state.entities.users[state.session.currentUserId],
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  logout: () => dispatch(logout()),
})

export default connect(mapStateToProps, mapDispatchToProps)(SidebarSwitcher);
