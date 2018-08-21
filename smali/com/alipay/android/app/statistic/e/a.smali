.class public Lcom/alipay/android/app/statistic/e/a;
.super Ljava/lang/Object;
.source "UserFeedBackUtil.java"


# static fields
.field private static a:Lcom/alipay/android/app/statistic/e/a;

.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static i:J


# instance fields
.field private d:Landroid/database/ContentObserver;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private j:J

.field private k:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/e/a;->a:Lcom/alipay/android/app/statistic/e/a;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/e/a;->b:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/statistic/e/a;->c:[Ljava/lang/String;

    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/alipay/android/app/statistic/e/a;->i:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "#\u6536\u94f6\u53f0\u53cd\u9988#"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->g:Ljava/lang/String;

    const-string/jumbo v0, "QUICKPAY@cashier-error-follow-action-flex"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->h:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/statistic/e/a;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->k:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/statistic/e/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/alipay/android/app/statistic/e/a;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alipay/android/app/statistic/e/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->k:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/alipay/android/app/statistic/e/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/e/a;->a:Lcom/alipay/android/app/statistic/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/statistic/e/a;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/e/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/e/a;->a:Lcom/alipay/android/app/statistic/e/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/e/a;->a:Lcom/alipay/android/app/statistic/e/a;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    const-string/jumbo v2, "feedback_cancel"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/statistic/e/c;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/statistic/e/c;-><init>(Lcom/alipay/android/app/statistic/e/a;)V

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    const-string/jumbo v2, "feedback_ok"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/statistic/e/d;

    invoke-direct {v3, p0, p2}, Lcom/alipay/android/app/statistic/e/d;-><init>(Lcom/alipay/android/app/statistic/e/a;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const-string/jumbo v2, "feedback_tip_msg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/statistic/e/a;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/statistic/e/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/statistic/e/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/statistic/e/a;->j:J

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/e/a;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()J
    .locals 2

    sget-wide v0, Lcom/alipay/android/app/statistic/e/a;->i:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/statistic/e/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/statistic/e/b;-><init>(Lcom/alipay/android/app/statistic/e/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->d:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    iput-object p1, p0, Lcom/alipay/android/app/statistic/e/a;->k:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->d:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/e/a;->f()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/app/statistic/e/a;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 3

    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/e/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getWindowType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/statistic/e/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "QUICKPAY@cashier-error-follow-action-flex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTemplateContentData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "msg"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getWindowType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "msg"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/e/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/statistic/e/a;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/app/statistic/e/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->f:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/statistic/e/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{{fb_cashier_a|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/statistic/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/statistic/e/a;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->k:Landroid/app/Activity;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/e/a;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
