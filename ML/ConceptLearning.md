# Chapter 2 Concept learning and the general-to-specific ordering
����ѧϰ��ָ��ѵ�����е��������ѧϰһ������ֵ������

## Inductive lerning ����
����ѧϰ���裬�κ���һ����ִ��ѵ�����н��Ƴ����ļ���
��û�й۲��������Ҳ����Ƴ�����

����ռ�H�еĹ�ϵ more general �� more specific ��һ���������ϵ
### Find-S �㷨

```
��ʼ�� h Ϊ����ռ�H�е�������ļ���
for each ѵ�����е����� x
	for each ����Լ�� ai in h
		if x ���� ai
			do nothing
		else
			��ai�滻��x�������һ����һ��ļ���
��� h
```

### Candidate-Elimination �㷨

һ������h��ѵ����D����һ�µ�consistent�����ҽ���h(x)=c(x)��
��D��һ��(x,c(x))�����������������ѵ������������
Consistent(h,D) = (\forall <x,c(x)> \in D) h(x) = c(x)

### version space 
VS_H,D = {h \in H | Consistent(h, D)}
����ѵ����D��һ�³����ļ���ļ��ϡ�