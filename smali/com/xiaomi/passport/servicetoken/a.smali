.class public Lcom/xiaomi/passport/servicetoken/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/passport/servicetoken/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/xiaomi/passport/servicetoken/a$a;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/Intent;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/b;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "V2#"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    iput-boolean v4, p0, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/a$a;->values()[Lcom/xiaomi/passport/servicetoken/a$a;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0

    :cond_1
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "sid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    const-string v0, "serviceToken"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    const-string v0, "security"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    const-string v0, "errorCode"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v0, "errorMessage"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    const-string v0, "stackTrace"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    const-string v0, "intent"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    const-string v0, "slh"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    const-string v0, "ph"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    const-string v0, "cUserId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    const-string v0, "peeked"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/a$a;->values()[Lcom/xiaomi/passport/servicetoken/a$a;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_2
.end method

.method private a(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/a$a;->ordinal()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v5, 0x27

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_0

    move v3, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move v2, v0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    move-object v1, v0

    :goto_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    :goto_3
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "ServiceTokenResult{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "sid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, ", serviceToken=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", security=\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", errorCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ", errorMessage=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", errorStackTrace=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", intent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ", slh=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", ph=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", cUserId=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", peeked="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, ", useV1Parcel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v1

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto/16 :goto_1

    :cond_2
    const-string v0, "serviceTokenMasked"

    move-object v1, v0

    goto/16 :goto_2

    :cond_3
    const-string v0, "securityMasked"

    goto/16 :goto_3
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/xiaomi/passport/servicetoken/a;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/xiaomi/passport/servicetoken/a;

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_a
    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_b
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_c
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_e
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_f
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_10
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :cond_11
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto/16 :goto_0

    :cond_12
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    goto/16 :goto_0

    :cond_13
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/a$a;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    if-eqz v3, :cond_b

    :goto_b
    add-int/2addr v0, v2

    return v0

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v1

    goto :goto_8

    :cond_9
    move v0, v1

    goto :goto_9

    :cond_a
    move v0, v1

    goto :goto_a

    :cond_b
    move v2, v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/servicetoken/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/a;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->a(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "sid"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serviceToken"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "security"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMessage"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intent"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->g:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "slh"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ph"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cUserId"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "peeked"

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/a;->k:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "V2#"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/a$a;->ordinal()I

    move-result v0

    goto :goto_1
.end method
