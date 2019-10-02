.class public Lcom/miui/video/biz/videoplus/app/entities/TabEntity;
.super Ljava/lang/Object;
.source "TabEntity.java"


# instance fields
.field private fragmentClass:Ljava/lang/Class;

.field private icon:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->icon:I

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->fragmentClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getFragmentClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->icon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setFragmentClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->fragmentClass:Ljava/lang/Class;

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->icon:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->name:Ljava/lang/String;

    return-void
.end method
