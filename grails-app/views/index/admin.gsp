<g:form resource="${this.user}" method="POST" class="form-horizontal">

    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="username"><g:message code="username.label"/></label>
        <div class="col-md-9">
            <g:textField name="username" type="text" class="form-control" required="required"/>
        </div>
    </div>

    <div class="form-group row">
        <label class="col-md-2 col-form-label"><g:message code="password.label" /></label>
        <div class="col-md-9">
            <g:textField name="password" type="password" class="form-control" required="required"/>
        </div>
    </div>

    <div class="form-group row">
        <label class="col-md-2 col-form-label">Admin?</label>
        <div class="col-md-10">
            <g:checkBox class="form-check-input" name="admin" checked="false" />
        </div>
    </div>

    <div class="form-group row">
        <label class="col-md-2 col-form-label"><g:message code="departamentos.label" /></label>
        <div class="col-md-9">
            <table class="table table-responsive-sm table-sm">
                <thead>
                <tr>
                    <th></th>
                    <th ><g:message code="nombre.label" /></th>
                    <th ><g:message code="descripcion.label" /></th>
                </tr>
                </thead>
                <tbody>

                <g:each in="${departamentoList}">
                    <tr>
                        <td><g:checkBox name="departamento" value="${it.id}" checked="false" /></td>
                        <td>${it.nombre}</td>
                        <td>${it.descripcion}</td>
                    </tr>
                </g:each>

                </tbody>

            </table>
        </div>


    </div>

    </div>
    <div class="card-footer">
        <g:submitButton name="create" class="btn btn-success save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </div>
</g:form>