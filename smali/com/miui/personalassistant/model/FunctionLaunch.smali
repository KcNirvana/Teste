.class public Lcom/miui/personalassistant/model/FunctionLaunch;
.super Ljava/lang/Object;
.source "FunctionLaunch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/personalassistant/model/FunctionLaunch;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_APP_NAME:Ljava/lang/String; = "appName"

.field public static final FIELD_CLASSNAME:Ljava/lang/String; = "className"

.field public static final FIELD_DRAWABLEID:Ljava/lang/String; = "drawableId"

.field public static final FIELD_DRAWABLENAME:Ljava/lang/String; = "drawableName"

.field public static final FIELD_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_ISXSPACE:Ljava/lang/String; = "isXspace"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final FIELD_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "FunctionLaunch"

.field private static final serialVersionUID:J = -0x6efa65a2e3c8147eL


# instance fields
.field private appName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private drawableId:I

.field private drawableName:Ljava/lang/String;

.field private groupId:I

.field private id:Ljava/lang/String;

.field private isXspace:Z

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/model/FunctionLaunch$1;

    invoke-direct {v0}, Lcom/miui/personalassistant/model/FunctionLaunch$1;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/model/FunctionLaunch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->groupId:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;-><init>()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setDrawableId(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setDrawableName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setGroupId(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setXspace(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->clone()Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/miui/personalassistant/model/FunctionLaunch;)I
    .locals 9
    .param p1    # Lcom/miui/personalassistant/model/FunctionLaunch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->isInstalled(Landroid/content/Context;)Z

    move-result v4

    const-string/jumbo v7, "com.alipay.sdk.formi"

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/personalassistant/util/Util;->isKeyguardSecure(Landroid/content/Context;)Z

    move-result v4

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->isInstalled(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v7, "com.alipay.sdk.formi"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/personalassistant/util/Util;->isKeyguardSecure(Landroid/content/Context;)Z

    move-result v3

    :cond_1
    if-eq v3, v4, :cond_3

    if-eqz v4, :cond_2

    :goto_0
    return v5

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v7

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v8

    if-eq v7, v8, :cond_6

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_5
    move v6, v5

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->compareTo(Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/miui/personalassistant/model/FunctionLaunch;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v2

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v0

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableId:I

    return v0
.end method

.method public getDrawableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->groupId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isAppList()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "com.alipay.sdk.formi"

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace:Z

    invoke-static {p1, v0, v1}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isXspace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    return-void
.end method

.method public setDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableId:I

    return-void
.end method

.method public setDrawableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->groupId:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    return-void
.end method

.method public setXspace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"drawableId\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \"uri\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"packageName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"className\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"drawableName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"isXspace\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"appName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"groupId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->drawableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/personalassistant/model/FunctionLaunch;->groupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
