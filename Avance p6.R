setwd('D:\\Archivos\\Maestría\\Ciclo 1\\Modelos lineales\\Examen Final')
rend_data=read.table('rendimiento.txt',header = T)
rend_data$presion=as.factor(rend_data$presion)
rend_data$temperatura=as.factor(rend_data$temperatura)
lm1=lm(rendimiento~temperatura*presion,data=rend_data)
anova(lm1)
#la interacción no es significativa
model.tables(aov(lm1),type = 'means',se = T)


with(rend_data,interaction.plot(x.factor = presion,trace.factor = temperatura,response = rendimiento,fun = mean,col=2,lwd=3))
#temp = 170 & presion = 215 te dan mayor rendimiento

