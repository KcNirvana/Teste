.class public Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;
.super Lcom/alipay/android/phone/inside/model/req/BaseModel;
.source "CreateCodeRequestModel.java"


# static fields
.field public static final POLICY_DEFAULT:Ljava/lang/String; = "default"

.field public static final POLICY_LAST_SELECT:Ljava/lang/String; = "lastSelect"


# instance fields
.field private policy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/model/req/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;->policy:Ljava/lang/String;

    return-void
.end method
