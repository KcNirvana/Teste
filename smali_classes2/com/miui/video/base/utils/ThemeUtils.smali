.class public Lcom/miui/video/base/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/utils/ThemeUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final RES_ANIM:Ljava/lang/String; = "anim"

.field private static final RES_ARRAY:Ljava/lang/String; = "array"

.field private static final RES_ATTR:Ljava/lang/String; = "attr"

.field private static final RES_BOOL:Ljava/lang/String; = "bool"

.field private static final RES_COLOR:Ljava/lang/String; = "color"

.field private static final RES_DIMEN:Ljava/lang/String; = "dimen"

.field private static final RES_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final RES_ID:Ljava/lang/String; = "id"

.field private static final RES_INTEGER:Ljava/lang/String; = "integer"

.field private static final RES_LAYOUT:Ljava/lang/String; = "layout"

.field private static final RES_STRING:Ljava/lang/String; = "string"

.field private static final RES_STYLE:Ljava/lang/String; = "style"

.field private static final RES_STYLEABLE:Ljava/lang/String; = "styleable"

.field private static final RES_XML:Ljava/lang/String; = "xml"


# instance fields
.field private isTheme:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mApplicationInflater:Landroid/view/LayoutInflater;

.field private mThemeContext:Landroid/content/Context;

.field private mThemeId:Ljava/lang/String;

.field private mThemeInflater:Landroid/view/LayoutInflater;

.field private mThemePackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/base/utils/ThemeUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/utils/ThemeUtils;-><init>()V

    return-void
.end method

.method private createPackageContext()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemePackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemePackageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    sget v0, Lcom/miui/video/common/library/R$string;->theme_id:I

    const-string v1, "string"

    invoke-direct {p0, v0, v1}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeInflater:Landroid/view/LayoutInflater;

    const-string v0, "createPackageContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTheme= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mThemeId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mThemePackageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/miui/video/framework/FrameworkPreference;->getInstance()Lcom/miui/video/framework/FrameworkPreference;

    move-result-object v0

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/FrameworkPreference;->setThemePackageName(Ljava/lang/String;)Z

    const-string v0, "createPackageContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTheme= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mThemeId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    return v0
.end method

.method public static getInstance()Lcom/miui/video/base/utils/ThemeUtils;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils$SingletonHolder;->access$000()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object v0

    return-object v0
.end method

.method private getResourceValue(ILjava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string v1, "getResourcesValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  resName= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  themeResId= 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getApplyTheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "color"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "drawable"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getId(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public getLayout(I)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getResourceId(ILjava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getResourceValue(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThemePackage()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    const-string v3, "getThemePackage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->getThemeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemeId:Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/framework/FrameworkPreference;->getInstance()Lcom/miui/video/framework/FrameworkPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkPreference;->getThemePackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/utils/ThemeUtils;->mThemePackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/base/utils/ThemeUtils;->createPackageContext()Z

    move-result p1

    return p1
.end method

.method public isApplyTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/utils/ThemeUtils;->isTheme:Z

    return v0
.end method

.method public setApplyTheme(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkPreference;->getInstance()Lcom/miui/video/framework/FrameworkPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkPreference;->getThemePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkPreference;->getInstance()Lcom/miui/video/framework/FrameworkPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/video/framework/FrameworkPreference;->setThemePackageName(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/miui/video/base/utils/ThemeUtils;->init(Landroid/content/Context;)Z

    invoke-static {}, Lcom/miui/video/base/utils/DataUtils;->getInstance()Lcom/miui/video/base/utils/DataUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/base/utils/DataUtils;->onThemeChanged(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
