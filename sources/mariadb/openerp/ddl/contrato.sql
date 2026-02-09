-- public.oa_sale_items_contract definition

-- Drop table

-- DROP TABLE public.oa_sale_items_contract;

CREATE TABLE public.oa_sale_items_contract (
	id serial4 NOT NULL,
	create_uid int4 NULL,
	create_date timestamp NULL,
	write_date timestamp NULL,
	write_uid int4 NULL,
	payroll_fixed_day int4 NULL,
	weighting_type varchar NOT NULL,
	color int4 NULL,
	date_end date NOT NULL,
	package_id int4 NOT NULL,
	code varchar(256) NOT NULL,
	service_date_end date NOT NULL,
	contract_type varchar NULL,
	inv_interval int4 NOT NULL,
	user_id int4 NULL,
	payroll_interval int4 NOT NULL,
	payroll_fixed_day_apply bool NULL,
	priority varchar NULL,
	discount_treatment varchar NULL,
	sign_date date NULL,
	regenerate_inv_planner bool NULL,
	cperiods_generated bool NULL,
	inv_description varchar NULL,
	finalization_comments text NULL,
	payroll_cutoff varchar NOT NULL,
	month_days int4 NULL,
	ignore_weekend bool NULL,
	service_date_start date NOT NULL,
	inv_control varchar NOT NULL,
	inv_specific_day int4 NULL,
	contract_state_finalization varchar NULL,
	year_days int4 NULL,
	opt_type varchar NOT NULL,
	regenerate_cperiods bool NULL,
	inv_planner_generated bool NULL,
	items_generated bool NULL,
	req_service_verification bool NULL,
	partner_id int4 NOT NULL,
	date_start date NOT NULL,
	state varchar NOT NULL,
	payroll_specific_day int4 NULL,
	package_version_id int4 NOT NULL,
	description text NULL,
	admin_user_id int4 NOT NULL,
	payroll_cutoff_type varchar NOT NULL,
	percentages varchar(256) NULL,
	inv_cutoff_type varchar NOT NULL,
	payroll_control varchar NOT NULL,
	regenerate_items bool NULL,
	provisional_account_id int4 NULL,
	use_cotization bool NULL,
	budget_request_compromise bool NULL,
	budget_tracking_type varchar NULL,
	budget_account_id int4 NULL,
	budget_account_is_controlled bool NULL,
	budget_cp_id int4 NULL,
	budget_distribution_schema_id int4 NULL,
	dist_type_value varchar NULL,
	CONSTRAINT oa_sale_items_contract_pkey PRIMARY KEY (id),
	CONSTRAINT oa_sale_items_contract_u_name UNIQUE (code)
);
CREATE INDEX oa_sale_items_contract_code_index ON public.oa_sale_items_contract USING btree (code);
CREATE INDEX oa_sale_items_contract_percentages_index ON public.oa_sale_items_contract USING btree (percentages);
CREATE INDEX oa_sale_items_contract_priority_index ON public.oa_sale_items_contract USING btree (priority);


-- public.oa_sale_items_contract foreign keys

ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_admin_user_id_fkey FOREIGN KEY (admin_user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_budget_account_id_fkey FOREIGN KEY (budget_account_id) REFERENCES public.oa_budget_account(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_budget_cp_id_fkey FOREIGN KEY (budget_cp_id) REFERENCES public.oa_budget_center(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_budget_distribution_schema_id_fkey FOREIGN KEY (budget_distribution_schema_id) REFERENCES public.oa_budget_distribution_schema(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_package_id_fkey FOREIGN KEY (package_id) REFERENCES public.oa_sale_items_package(id) ON DELETE RESTRICT;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_package_version_id_fkey FOREIGN KEY (package_version_id) REFERENCES public.oa_sale_items_package_version(id) ON DELETE RESTRICT;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_provisional_account_id_fkey FOREIGN KEY (provisional_account_id) REFERENCES public.account_account(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;
ALTER TABLE public.oa_sale_items_contract ADD CONSTRAINT oa_sale_items_contract_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;