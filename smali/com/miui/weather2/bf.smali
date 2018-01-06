.class public Lcom/miui/weather2/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/Typeface;

.field public static final b:Landroid/graphics/Typeface;

.field public static final c:Landroid/graphics/Typeface;

.field public static final d:Landroid/graphics/Typeface;

.field public static final e:Landroid/graphics/Typeface;

.field public static f:I

.field public static g:I

.field public static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Miui-Light.ttf"

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->g(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/bf;->a:Landroid/graphics/Typeface;

    const-string v0, "Miui-Thin.ttf"

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->g(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/bf;->b:Landroid/graphics/Typeface;

    const-string v0, "Miui-Regular.ttf"

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->g(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    const-string v0, "Miui-Regular.ttf"

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->g(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    const-string v0, "miui"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    sput v1, Lcom/miui/weather2/bf;->f:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/weather2/bf;->g:I

    const/4 v0, 0x2

    sput v0, Lcom/miui/weather2/bf;->h:I

    return-void
.end method
