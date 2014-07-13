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

## Candidate-Elimination �㷨

һ������h��ѵ����D����һ�µ�consistent�����ҽ���h(x)=c(x)��
��D��һ��(x,c(x))�����������������ѵ������������
Consistent(h,D) = (\forall <x,c(x)> \in D) h(x) = c(x)

### version space 
VS_H,D = {h \in H | Consistent(h, D)}
����ѵ����D��һ�³����ļ���ļ��ϡ�

### List-Then-Eliminate�㷨
```
VersionSpace(VS) <- H�����еļ���
for each ѵ������<x,c(x)>
	��VS���Ƴ�����h��h(x) \noteq c(x)
���VS
```

### boundary
general boundary G = {g \in H | Consistent(g,D) ^ (������ g')[(g' >_g g) ^ Consistent(g',D)]}
specific boundary S = {s �� H | Consistent(s,D) ^ (������ s')[(s >_g s') ^ Consistent(s',D)]}

### Candidate-Elimination �㷨
```
��ʼ��GΪH����һ��ļ��輯��
��ʼ��SΪ������ļ��輯��
for each ѵ������ d
	if d ������
		�Ƴ�G����d��һ�µļ���
		for each S����d��һ�µļ���s
			��S���Ƴ�s
			��ӱ�s��Сһ�㻯�ļ���h��S�У�h��dһ�£�����G�д��ڱ�h��һ��ļ���
			��S���Ƴ���S�����������һ��ļ���
	if d �Ƿ���
		����������෴ G<->S
```