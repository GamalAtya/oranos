import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/core/colors_manager.dart';
import 'package:oranos/features/experts/presentation/bloc/experts_bloc.dart';
import 'package:oranos/features/get_started/presentation/bloc/chat_bloc.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return BlocBuilder<ExpertsBloc, ExpertsState>(
      builder: (context, state) {
        if(state is GetExperts){
        return
          Stack(
            children: [
            Container(
            height: size.height,
            width: size.width ,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.315,
                    width: size.width,
                    child: Column(
                      children: [
                        SizedBox(
                            height: size.height * 0.0315,
                            width: size.width ,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Recommended Experts' , style: Theme.of(context).textTheme.headline2,),
                                  const Icon(Icons.more_horiz)
                                ],
                              ),
                            )
                        ),
                        SizedBox(
                          width: size.width,
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for(int i = 0 ; i < state.recommendedList.length ; i++)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: size.height * 0.26,
                                      width: size.width *0.45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: ColorManager.grey)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: size.height* 0.16,
                                            width: size.width *0.45,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5) , topRight: Radius.circular(5)),
                                              // image: DecorationImage(image: AssetImage(state.recommendedList[i].image ,))
                                            ),
                                            child: Image.asset(state.recommendedList[i].image , fit: BoxFit.cover, ),
                                          ),
                                          SizedBox(
                                            height: size.height* 0.05,
                                            width: size.width *0.45,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: size.width * 0.2,
                                                  child: Row(
                                                      children:[
                                                        const Icon(Icons.star , color: Colors.amber, size: 20,),
                                                        Text("(${state.recommendedList[i].rate})")
                                                      ]),
                                                ),
                                                IconButton(
                                                    onPressed: (){
                                                      BlocProvider.of<ExpertsBloc>(context).add(AddToFavouriteEvent(index: i));
                                                    },
                                                    icon: Icon(Icons.favorite , size: 20,  color:state.recommendedList[i].favourite ? ColorManager.black : ColorManager.grey ,))
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                              height: size.height * 0.02,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                                                child: Text(state.recommendedList[i].name , style: Theme.of(context).textTheme.headline4,),
                                              )),
                                          SizedBox(
                                              height: size.height * 0.02,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                                                child: Text(state.recommendedList[i].category,style: Theme.of(context).textTheme.headline4,),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
              DraggableScrollableSheet(
                initialChildSize: 0.01,
                minChildSize: 0.01,
                maxChildSize: 0.70,
                builder: (BuildContext context, ScrollController scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorManager.white,

                      ),
                      child: Container(
                        height: size.height* 0.5,
                        child: Column(
                          children: [
                            Container(
                              height: 10,
                              width: 30,
                              decoration: BoxDecoration(
                                color: ColorManager.grey,
                                borderRadius: BorderRadius.circular(3)
                              ),
                            ),
                            for(int i = 0 ; i < 4 ; i++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: size.height * 0.08,
                                width: size.width * 0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: ColorManager.grey),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(ImageAssets.categoryIcon),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.5,
                                      height: size.height * 0.1,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Information Technology'),
                                          Text('23 Experts')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),

        ],
          );
        }else{
          return const SizedBox();
        }
      },
    );
  }
}
