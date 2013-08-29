︠5083702f-34e6-4f27-81b6-c1c9be510e7e︠
def contour_list(f,Rx,d,N=50):
    "list of values of f(x,y) which produce 4N contours in 2*Rx horizontal rectangle with vertical delta d at side edges"
    li = [f(Rx,0),f(-Rx,0)]
    for i in range(1,N+1):
        li = li + [f(Rx,i*d),f(Rx,-i*d)] + [f(-Rx,i*d),f(-Rx,-i*d)]
    return li

def t(k):
    "returns the target map for Sto_k"
    return (lambda x,y: exp(x^(k-1)*y)*x)

def s(k):
    "returns the symmetric source map for Sto_k"
    return (lambda x,y: exp(-x^(k-1)*y)*x)

def StoPlot(k,t,contour_list,color='darkblue'):
    "draws the t-fibers of Sto_k for t-values in list contour_list(t(k)).  t(k) is a function depending on k"
    x,y = var('x,y')
    return contour_plot(t(k), (x,-4,4),(y,-3,3),
                     fill=False,
                     cmap=[color],
                     frame=False,
                     contours=contour_list(t(k),4,.1,N=100),
                     plot_points=200,
                     aspect_ratio=1,
                     figsize=8)
︠0df52fef-76e7-4322-9372-4876a58d0fba︠
S=StoPlot(2,s,contour_list,color='darkred')
T=StoPlot(2,t,contour_list,color='darkblue')
Z=line([(-4,0),(4,0)],color="black")
S+T+Z
︡7ddac8f4-d16f-425b-bd66-322e970a91c3︡{"file":{"show":true,"uuid":"13c6d62a-6c69-4145-b393-e1678d786b22","filename":"/mnt/home/LsSc45Qc/.sage/temp/compute2a/22161/tmp_AwkKrz.png"}}︡
︠64de6482-1edc-4f12-a4aa-c5df2f8a6f4a︠
T1=StoPlot(1,t,contour_list,color='darkblue')
S1=StoPlot(1,s,contour_list,color='darkred')

Z+T1+S1
︡436029bb-84a6-4e0f-a205-dfde829dbe09︡{"file":{"show":true,"uuid":"9c598812-b688-4d71-8ae3-dd7693755c2c","filename":"/mnt/home/LsSc45Qc/.sage/temp/compute2a/26642/tmp_8yrfKb.png"}}︡
︠3f36e9f8-4a4d-478c-b16d-285f2ae21a90︠
# T.SHOW_OPTIONS['transparent']=True









