.class final Lcom/xiaomi/accountsdk/account/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/accountsdk/account/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/a/c;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/a/c$a;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/a/c$a;-><init>()V

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/a/c$a;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/c$a;

    move-result-object v1

    const-string v2, "phone_hash"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/a/c$a;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/c$a;

    move-result-object v1

    const-string v2, "activator_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/a/c$a;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/c$a;

    move-result-object v1

    const-string v2, "slot_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/a/c$a;->a(I)Lcom/xiaomi/accountsdk/account/a/c$a;

    move-result-object v1

    const-string v2, "copy_writer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/a/c$a;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/c$a;

    move-result-object v1

    const-string v2, "operator_link"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/a/c$a;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/c$a;->a()Lcom/xiaomi/accountsdk/account/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)[Lcom/xiaomi/accountsdk/account/a/c;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/accountsdk/account/a/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/a/d;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/a/d;->a(I)[Lcom/xiaomi/accountsdk/account/a/c;

    move-result-object v0

    return-object v0
.end method
