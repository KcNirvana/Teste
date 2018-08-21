.class public interface abstract Lcom/alipay/android/app/plugin/b;
.super Ljava/lang/Object;
.source "IMspEngine.java"


# virtual methods
.method public abstract checkAuthority(Z)Z
.end method

.method public abstract checkLoginStatus()Z
.end method

.method public abstract cleanFpCache()V
.end method

.method public abstract clearCheckLoginStatus()V
.end method

.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract destroyMsp()V
.end method

.method public abstract faceAuth(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
.end method

.method public abstract getAlipayLocaleDes()Ljava/lang/String;
.end method

.method public abstract getApdidToken(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract getCertsn()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getExtractData()Ljava/lang/String;
.end method

.method public abstract getInsideEnv(Z)Ljava/lang/String;
.end method

.method public abstract getPackageName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getResources(Landroid/app/Activity;)Landroid/content/res/Resources;
.end method

.method public abstract getTrId()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract hardwarePayOpt(ILjava/lang/String;)V
.end method

.method public abstract initAuthToken()V
.end method

.method public abstract loadProperties(Landroid/content/Context;)V
.end method

.method public abstract onException(Ljava/lang/Throwable;)V
.end method

.method public abstract performanceBuilder(Ljava/lang/String;)V
.end method

.method public abstract processScheme(Ljava/lang/String;)V
.end method

.method public abstract registerCutPoint()V
.end method

.method public abstract resetResource()V
.end method

.method public abstract share(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V
.end method

.method public abstract userFeedBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract verifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
.end method

.method public abstract walletBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
