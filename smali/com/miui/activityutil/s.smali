.class public Lcom/miui/activityutil/s;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/activityutil/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/miui/activityutil/v;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/activityutil/v;->a(Lcom/miui/activityutil/v;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/activityutil/v;->b(Lcom/miui/activityutil/v;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/t;)V
    .locals 1

    new-instance v0, Lcom/miui/activityutil/v;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/miui/activityutil/v;-><init>(Lcom/miui/activityutil/s;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/t;)V

    invoke-static {p1, v0}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;Lcom/miui/activityutil/v;)V

    invoke-virtual {v0}, Lcom/miui/activityutil/v;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;[Ljava/lang/String;[BLcom/miui/activityutil/t;)V
    .locals 1

    new-instance v0, Lcom/miui/activityutil/v;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/miui/activityutil/v;-><init>(Lcom/miui/activityutil/s;[Ljava/lang/String;[BLcom/miui/activityutil/t;)V

    invoke-static {p1, v0}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;Lcom/miui/activityutil/v;)V

    invoke-virtual {v0}, Lcom/miui/activityutil/v;->a()V

    return-void
.end method
