function d = average_project_grad_sqrt(opts,v)
metric= opts.metric;
sD = size(metric.D);
H0 =0;
for i = 1:sD(2)
	H0 =H0+ ((metric.HeDs{1}(:,i))'*metric.Ds{1}(:,i))/((metric.HeDs{1}(:,i))'*(metric.HeDs{1}(:,i)));
end
H0 = H0/sD(2);
H0 = sqrt(H0);
d = H0*v;
end