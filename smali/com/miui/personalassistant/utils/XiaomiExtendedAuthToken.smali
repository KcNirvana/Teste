.class public Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;
.super Ljava/lang/Object;
.source "XiaomiExtendedAuthToken.java"


# instance fields
.field private mCUserId:Ljava/lang/String;

.field private mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    iput-object p2, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;

    iget-object v3, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    if-nez v3, :cond_4

    :cond_6
    iget-object v3, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedAuthToken()Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->security:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mCUserId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->mExtendedAuthToken:Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->hashCode()I

    move-result v0

    goto :goto_0
.end method
