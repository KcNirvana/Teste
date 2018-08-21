.class public Lcom/miui/payment/captor/CaptorToken;
.super Ljava/lang/Object;
.source "CaptorToken.java"


# static fields
.field private static final REGEX_SOURCE:Ljava/lang/String; = "Token \\{pkg name:(.*), activity name:(.*), version:(.*)\\}"


# instance fields
.field private activityIdentity:Ljava/lang/String;

.field private activityName:Ljava/lang/String;

.field private isNewActivity:Z

.field private pkgName:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/payment/captor/CaptorToken;->versionCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->pkgName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->activityName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->activityIdentity:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/payment/captor/CaptorToken;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/payment/captor/CaptorToken;->activityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/payment/captor/CaptorToken;->activityIdentity:Ljava/lang/String;

    iput p4, p0, Lcom/miui/payment/captor/CaptorToken;->versionCode:I

    invoke-direct {p0, p1}, Lcom/miui/payment/captor/CaptorToken;->setCaptorSource(Ljava/lang/String;)V

    return-void
.end method

.method public static createTextToken(Ljava/lang/String;)Lcom/miui/payment/captor/CaptorToken;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v5, "Token \\{pkg name:(.*), activity name:(.*), version:(.*)\\}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/miui/payment/captor/CaptorToken;

    invoke-direct {v5, v2, v0, v6, v4}, Lcom/miui/payment/captor/CaptorToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-object v5

    :cond_1
    move-object v5, v6

    goto :goto_0
.end method

.method private setCaptorSource(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "com.miui.personalassistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "internal"

    iput-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->source:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.miui.smsextra"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mms"

    iput-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->source:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "catcher"

    iput-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->source:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getActivityIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->activityIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/CaptorToken;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/CaptorToken;->versionCode:I

    return v0
.end method

.method public isNewActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/captor/CaptorToken;->isNewActivity:Z

    return v0
.end method

.method public setActivityIdentity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/CaptorToken;->activityIdentity:Ljava/lang/String;

    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/CaptorToken;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setNewActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/captor/CaptorToken;->isNewActivity:Z

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/CaptorToken;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/CaptorToken;->versionCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CaptorToken{versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/captor/CaptorToken;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/captor/CaptorToken;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/captor/CaptorToken;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activityIdentity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/captor/CaptorToken;->activityIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
