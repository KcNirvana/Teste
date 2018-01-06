.class public Lcom/miui/weather2/structures/IndexDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private category:Ljava/lang/String;

.field private cornerTip:Ljava/lang/String;

.field private id:I

.field private image:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/IndexDataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private module:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private perpage:I

.field private rowType:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->cornerTip:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/IndexDataListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getModule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->module:Ljava/util/List;

    return-object v0
.end method

.method public getPerpage()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->perpage:I

    return v0
.end method

.method public getRowType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->rowType:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->template:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/structures/IndexDataBean;->visible:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setCornerTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->cornerTip:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->image:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/IndexDataListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setModule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->module:Ljava/util/List;

    return-void
.end method

.method public setPerpage(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->perpage:I

    return-void
.end method

.method public setRowType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->rowType:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->template:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/structures/IndexDataBean;->visible:Z

    return-void
.end method
