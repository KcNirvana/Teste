.class public interface abstract Lcom/ali/user/mobile/account/a/a;
.super Ljava/lang/Object;
.source "IUserInfoDao.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/account/a/a;->a:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/account/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/ali/user/mobile/account/bean/UserInfo;)V
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b()Z
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public abstract c(Ljava/lang/String;)Z
.end method

.method public abstract d(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
.end method
