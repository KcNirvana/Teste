.class public interface abstract Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_CORRECTION_TYPE:Ljava/lang/String; = "correction_type"

.field public static final TC_TYPE_ALL:I = 0x7

.field public static final TC_TYPE_BILL:I = 0x2

.field public static final TC_TYPE_CALLTIME:I = 0x4

.field public static final TC_TYPE_TRAFFIC:I = 0x1

.field public static final TIMEOUT_MILLION:J = 0x83d60L


# virtual methods
.method public abstract getBrands(Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract getCities(I)Ljava/util/Map;
.end method

.method public abstract getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;
.end method

.method public abstract getInstructions(I)Ljava/util/Map;
.end method

.method public abstract getOperators()Ljava/util/Map;
.end method

.method public abstract getProvinceCodeByCityCode(I)I
.end method

.method public abstract getProvinces()Ljava/util/Map;
.end method

.method public abstract getTcType()I
.end method

.method public abstract isConfigUpdated()Z
.end method

.method public abstract isFinished()Z
.end method

.method public abstract registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
.end method

.method public abstract saveConfig(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;)Z
.end method

.method public abstract setTotalLimit(J)V
.end method

.method public abstract startCorrection(ZLjava/util/Map;)Z
.end method

.method public abstract startCorrection(ZLjava/util/Map;JI)Z
.end method

.method public abstract unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
.end method

.method public abstract updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method
