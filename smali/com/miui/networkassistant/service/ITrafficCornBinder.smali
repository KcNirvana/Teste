.class public interface abstract Lcom/miui/networkassistant/service/ITrafficCornBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getBrands(Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract getCities(I)Ljava/util/Map;
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

.method public abstract registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
.end method

.method public abstract unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
.end method
