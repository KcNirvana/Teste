.class public Lcom/alipay/android/app/pay/a;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:Z

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:I

.field public static m:I

.field public static n:Ljava/lang/String;

.field public static o:Z

.field public static p:Z

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Z

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x4e20

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mspjson/test.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/a;->a:Ljava/lang/String;

    sput-boolean v2, Lcom/alipay/android/app/pay/a;->b:Z

    const-string/jumbo v0, "SPSafePay"

    sput-object v0, Lcom/alipay/android/app/pay/a;->c:Ljava/lang/String;

    sput v3, Lcom/alipay/android/app/pay/a;->d:I

    sput v3, Lcom/alipay/android/app/pay/a;->e:I

    const/16 v0, 0x4000

    sput v0, Lcom/alipay/android/app/pay/a;->f:I

    const/16 v0, 0x7530

    sput v0, Lcom/alipay/android/app/pay/a;->g:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/a;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/a;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/a;->k:Ljava/lang/String;

    const/16 v0, 0xe

    sput v0, Lcom/alipay/android/app/pay/a;->l:I

    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/app/pay/a;->m:I

    sput-boolean v2, Lcom/alipay/android/app/pay/a;->o:Z

    sput-boolean v2, Lcom/alipay/android/app/pay/a;->p:Z

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/android/app/pay/a;->r:Ljava/lang/String;

    const-string/jumbo v0, "com.alipay.android.app"

    sput-object v0, Lcom/alipay/android/app/pay/a;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/a;->t:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/pay/a;->u:Z

    sput-object v4, Lcom/alipay/android/app/pay/a;->v:Ljava/lang/String;

    sput-object v4, Lcom/alipay/android/app/pay/a;->w:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    const-class v2, Lcom/alipay/android/app/pay/a;

    monitor-enter v2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/alipay/android/app/sys/b;->a(Landroid/content/Context;Lcom/alipay/android/app/k;)V

    sget-boolean v0, Lcom/alipay/android/app/pay/a;->b:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alipay/android/app/pay/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/alipay/android/app/plugin/b;->getResources(Landroid/app/Activity;)Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v3, "msp"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->h(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v3, Lcom/alipay/android/app/pay/a;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "kernel_version"

    const-string/jumbo v4, "app-and"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/android/app/pay/a;->i:Ljava/lang/String;

    :cond_3
    sget-object v3, Lcom/alipay/android/app/pay/a;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "from_which"

    const-string/jumbo v4, "msp"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/android/app/pay/a;->j:Ljava/lang/String;

    :cond_4
    sget-object v3, Lcom/alipay/android/app/pay/a;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "update_os_type"

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/android/app/pay/a;->k:Ljava/lang/String;

    :cond_5
    sget-object v3, Lcom/alipay/android/app/pay/a;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "hardware_pay_types"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/android/app/pay/a;->v:Ljava/lang/String;

    :cond_6
    sget-object v3, Lcom/alipay/android/app/pay/a;->t:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/alipay/android/app/pay/a;->u:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "sdk_type"

    const-string/jumbo v4, "CommonChannelInfo"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/android/app/pay/a;->t:Ljava/lang/String;

    :cond_7
    sget-object v3, Lcom/alipay/android/app/pay/a;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "trideskey"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    sput-object v4, Lcom/alipay/android/app/pay/a;->n:Ljava/lang/String;

    :cond_8
    :goto_1
    sget-object v3, Lcom/alipay/android/app/pay/a;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "api_version"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/a;->q:Ljava/lang/String;

    :cond_9
    invoke-static {p0}, Lcom/alipay/android/app/pay/a;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/pay/a;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_a
    :try_start_3
    const-string/jumbo v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    const-string/jumbo v5, "rsa_public"

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alipay/android/app/pay/a;->n:Ljava/lang/String;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "trideskey"

    sget-object v5, Lcom/alipay/android/app/pay/a;->n:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "InitializePropEx"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_b

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_b
    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/app/pay/a;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
