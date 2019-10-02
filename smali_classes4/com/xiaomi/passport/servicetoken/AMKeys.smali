.class public final Lcom/xiaomi/passport/servicetoken/AMKeys;
.super Ljava/lang/Object;
.source "AMKeys.java"


# static fields
.field private static final AM_USER_DATA_KEY_C_USER_ID:Ljava/lang/String; = "encrypted_user_id"

.field private static final AM_USER_DATA_KEY_PH_POSTFIX:Ljava/lang/String; = "_ph"

.field private static final AM_USER_DATA_KEY_SLH_POSTFIX:Ljava/lang/String; = "_slh"

.field private static final TYPE:Ljava/lang/String; = "com.xiaomi"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmUserDataKeyCUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "encrypted_user_id"

    return-object v0
.end method

.method public getAmUserDataKeyPh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ph"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAmUserDataKeySlh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_slh"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi"

    return-object v0
.end method
