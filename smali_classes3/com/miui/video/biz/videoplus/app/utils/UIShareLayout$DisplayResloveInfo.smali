.class public Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;
.super Ljava/lang/Object;
.source "UIShareLayout.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayResloveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mResolvedIntent:Landroid/content/Intent;

.field public priority:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->priority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)I
    .locals 1

    iget p1, p1, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->priority:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->priority:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->compareTo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)I

    move-result p1

    return p1
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setResolvedIntent(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->mResolvedIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->mResolvedIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method
