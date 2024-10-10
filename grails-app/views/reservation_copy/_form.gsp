<%@ page import="general.Reservation" %>



<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'book', 'error')} required">
	<label for="book">
		<g:message code="reservation.book.label" default="Book" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="book" name="book.id" from="${general.Book.list()}" optionKey="id" required="" value="${reservationInstance?.book?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'library', 'error')} required">
	<label for="library">
		<g:message code="reservation.library.label" default="Library" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="library" cols="40" rows="5" maxlength="255" required="" value="${reservationInstance?.library}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="reservation.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${reservationInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="reservation.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${reservationInstance?.endDate}"  />

</div>

