.class public abstract Lcom/alipay/android/app/template/JSPlugin;
.super Ljava/lang/Object;
.source "JSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/template/JSPlugin$FromCall;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONEXT_HASHCODE:I


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPlugin;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/JSPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public pluginName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/JSPlugin;->mContext:Landroid/content/Context;

    return-void
.end method
